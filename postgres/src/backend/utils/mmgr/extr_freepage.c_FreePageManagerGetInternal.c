
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;


struct TYPE_22__ {scalar_t__ npages; int first_page; } ;
struct TYPE_21__ {int found; size_t index; TYPE_14__* page; } ;
struct TYPE_20__ {size_t contiguous_pages; int contiguous_pages_dirty; size_t singleton_first_page; scalar_t__ singleton_npages; int btree_root; int * freelist; } ;
struct TYPE_19__ {size_t npages; scalar_t__ magic; int prev; int next; } ;
struct TYPE_18__ {TYPE_5__* leaf_key; } ;
struct TYPE_17__ {TYPE_1__ u; } ;
typedef size_t Size ;
typedef TYPE_2__ FreePageSpanLeader ;
typedef TYPE_3__ FreePageManager ;
typedef TYPE_4__ FreePageBtreeSearchResult ;
typedef TYPE_5__ FreePageBtreeLeafKey ;


 int Assert (int) ;
 size_t FPM_NUM_FREELISTS ;
 scalar_t__ FREE_PAGE_SPAN_LEADER_MAGIC ;
 int FreePageBtreeAdjustAncestorKeys (TYPE_3__*,TYPE_14__*) ;
 int FreePageBtreeRemove (TYPE_3__*,TYPE_14__*,size_t) ;
 int FreePageBtreeSearch (TYPE_3__*,size_t,TYPE_4__*) ;
 int FreePagePushSpanLeader (TYPE_3__*,size_t,size_t) ;
 size_t Min (size_t,size_t) ;
 size_t fpm_pointer_to_page (char*,TYPE_2__*) ;
 char* fpm_segment_base (TYPE_3__*) ;
 TYPE_2__* relptr_access (char*,int ) ;
 int relptr_copy (int ,int ) ;
 scalar_t__ relptr_is_null (int ) ;

__attribute__((used)) static bool
FreePageManagerGetInternal(FreePageManager *fpm, Size npages, Size *first_page)
{
 char *base = fpm_segment_base(fpm);
 FreePageSpanLeader *victim = ((void*)0);
 FreePageSpanLeader *prev;
 FreePageSpanLeader *next;
 FreePageBtreeSearchResult result;
 Size victim_page = 0;
 Size f;
 for (f = Min(npages, FPM_NUM_FREELISTS) - 1; f < FPM_NUM_FREELISTS; ++f)
 {

  if (relptr_is_null(fpm->freelist[f]))
   continue;







  if (f < FPM_NUM_FREELISTS - 1)
   victim = relptr_access(base, fpm->freelist[f]);
  else
  {
   FreePageSpanLeader *candidate;

   candidate = relptr_access(base, fpm->freelist[f]);
   do
   {
    if (candidate->npages >= npages && (victim == ((void*)0) ||
             victim->npages > candidate->npages))
    {
     victim = candidate;
     if (victim->npages == npages)
      break;
    }
    candidate = relptr_access(base, candidate->next);
   } while (candidate != ((void*)0));
  }
  break;
 }


 if (victim == ((void*)0))
  return 0;


 Assert(victim->magic == FREE_PAGE_SPAN_LEADER_MAGIC);
 prev = relptr_access(base, victim->prev);
 next = relptr_access(base, victim->next);
 if (prev != ((void*)0))
  relptr_copy(prev->next, victim->next);
 else
  relptr_copy(fpm->freelist[f], victim->next);
 if (next != ((void*)0))
  relptr_copy(next->prev, victim->prev);
 victim_page = fpm_pointer_to_page(base, victim);


 if (f == FPM_NUM_FREELISTS - 1 &&
  victim->npages == fpm->contiguous_pages)
 {






  fpm->contiguous_pages_dirty = 1;
 }
 else if (f + 1 == fpm->contiguous_pages &&
    relptr_is_null(fpm->freelist[f]))
 {






  fpm->contiguous_pages_dirty = 1;
 }






 if (relptr_is_null(fpm->btree_root))
 {
  Assert(victim_page == fpm->singleton_first_page);
  Assert(victim->npages == fpm->singleton_npages);
  Assert(victim->npages >= npages);
  fpm->singleton_first_page += npages;
  fpm->singleton_npages -= npages;
  if (fpm->singleton_npages > 0)
   FreePagePushSpanLeader(fpm, fpm->singleton_first_page,
           fpm->singleton_npages);
 }
 else
 {






  FreePageBtreeSearch(fpm, victim_page, &result);
  Assert(result.found);
  if (victim->npages == npages)
   FreePageBtreeRemove(fpm, result.page, result.index);
  else
  {
   FreePageBtreeLeafKey *key;


   Assert(victim->npages > npages);
   key = &result.page->u.leaf_key[result.index];
   Assert(key->npages == victim->npages);
   key->first_page += npages;
   key->npages -= npages;
   if (result.index == 0)
    FreePageBtreeAdjustAncestorKeys(fpm, result.page);


   FreePagePushSpanLeader(fpm, victim_page + npages,
           victim->npages - npages);
  }
 }


 *first_page = fpm_pointer_to_page(base, victim);
 return 1;
}
