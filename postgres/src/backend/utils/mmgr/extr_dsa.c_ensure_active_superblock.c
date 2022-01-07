
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {void** pagemap; int fpm; } ;
typedef TYPE_1__ dsa_segment_map ;
typedef void* dsa_pointer ;
struct TYPE_11__ {void* nextspan; size_t nallocatable; void* prevspan; int fclass; } ;
typedef TYPE_2__ dsa_area_span ;
struct TYPE_12__ {void** spans; } ;
typedef TYPE_3__ dsa_area_pool ;
typedef int dsa_area ;


 int Assert (int) ;
 int DSA_AREA_LOCK (int *) ;
 int DSA_FULLNESS_CLASSES ;
 void* DSA_MAKE_POINTER (int ,size_t) ;
 size_t DSA_PAGES_PER_SUPERBLOCK ;
 int DSA_SCLASS_BLOCK_OF_SPANS ;
 int DSA_SCLASS_LOCK (int *,int) ;
 size_t DSA_SUPERBLOCK_SIZE ;
 int DsaPointerIsValid (void*) ;
 int FATAL ;
 size_t FPM_PAGE_SIZE ;
 int FreePageManagerGet (int ,size_t,size_t*) ;
 void* InvalidDsaPointer ;
 int LWLockAcquire (int ,int ) ;
 int LWLockHeldByMe (int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 void* alloc_object (int *,int) ;
 scalar_t__ dsa_get_address (int *,void*) ;
 size_t* dsa_size_classes ;
 int elog (int ,char*,size_t) ;
 TYPE_1__* get_best_segment (int *,size_t) ;
 int get_segment_index (int *,TYPE_1__*) ;
 int init_span (int *,void*,TYPE_3__*,void*,size_t,int) ;
 TYPE_1__* make_new_segment (int *,size_t) ;
 scalar_t__ transfer_first_span (int *,TYPE_3__*,int,int) ;

__attribute__((used)) static bool
ensure_active_superblock(dsa_area *area, dsa_area_pool *pool,
       int size_class)
{
 dsa_pointer span_pointer;
 dsa_pointer start_pointer;
 size_t obsize = dsa_size_classes[size_class];
 size_t nmax;
 int fclass;
 size_t npages = 1;
 size_t first_page;
 size_t i;
 dsa_segment_map *segment_map;

 Assert(LWLockHeldByMe(DSA_SCLASS_LOCK(area, size_class)));







 if (size_class == DSA_SCLASS_BLOCK_OF_SPANS)
  nmax = FPM_PAGE_SIZE / obsize - 1;
 else
  nmax = DSA_SUPERBLOCK_SIZE / obsize;






 for (fclass = 2; fclass < DSA_FULLNESS_CLASSES - 1; ++fclass)
 {
  span_pointer = pool->spans[fclass];

  while (DsaPointerIsValid(span_pointer))
  {
   int tfclass;
   dsa_area_span *span;
   dsa_area_span *nextspan;
   dsa_area_span *prevspan;
   dsa_pointer next_span_pointer;

   span = (dsa_area_span *)
    dsa_get_address(area, span_pointer);
   next_span_pointer = span->nextspan;


   tfclass = (nmax - span->nallocatable)
    * (DSA_FULLNESS_CLASSES - 1) / nmax;


   if (DsaPointerIsValid(span->nextspan))
    nextspan = (dsa_area_span *)
     dsa_get_address(area, span->nextspan);
   else
    nextspan = ((void*)0);





   if (tfclass < fclass)
   {

    if (pool->spans[fclass] == span_pointer)
    {

     Assert(!DsaPointerIsValid(span->prevspan));
     pool->spans[fclass] = span->nextspan;
     if (nextspan != ((void*)0))
      nextspan->prevspan = InvalidDsaPointer;
    }
    else
    {

     Assert(DsaPointerIsValid(span->prevspan));
     prevspan = (dsa_area_span *)
      dsa_get_address(area, span->prevspan);
     prevspan->nextspan = span->nextspan;
    }
    if (nextspan != ((void*)0))
     nextspan->prevspan = span->prevspan;


    span->nextspan = pool->spans[tfclass];
    pool->spans[tfclass] = span_pointer;
    span->prevspan = InvalidDsaPointer;
    if (DsaPointerIsValid(span->nextspan))
    {
     nextspan = (dsa_area_span *)
      dsa_get_address(area, span->nextspan);
     nextspan->prevspan = span_pointer;
    }
    span->fclass = tfclass;
   }


   span_pointer = next_span_pointer;
  }


  if (DsaPointerIsValid(pool->spans[1]))
   return 1;
 }
 Assert(!DsaPointerIsValid(pool->spans[1]));
 for (fclass = 2; fclass < DSA_FULLNESS_CLASSES - 1; ++fclass)
  if (transfer_first_span(area, pool, fclass, 1))
   return 1;
 if (!DsaPointerIsValid(pool->spans[1]) &&
  transfer_first_span(area, pool, 0, 1))
  return 1;
 if (size_class != DSA_SCLASS_BLOCK_OF_SPANS)
 {
  span_pointer = alloc_object(area, DSA_SCLASS_BLOCK_OF_SPANS);
  if (!DsaPointerIsValid(span_pointer))
   return 0;
  npages = DSA_PAGES_PER_SUPERBLOCK;
 }


 LWLockAcquire(DSA_AREA_LOCK(area), LW_EXCLUSIVE);
 segment_map = get_best_segment(area, npages);
 if (segment_map == ((void*)0))
 {
  segment_map = make_new_segment(area, npages);
  if (segment_map == ((void*)0))
  {
   LWLockRelease(DSA_AREA_LOCK(area));
   return 0;
  }
 }





 if (!FreePageManagerGet(segment_map->fpm, npages, &first_page))
  elog(FATAL,
    "dsa_allocate could not find %zu free pages for superblock",
    npages);
 LWLockRelease(DSA_AREA_LOCK(area));


 start_pointer =
  DSA_MAKE_POINTER(get_segment_index(area, segment_map),
       first_page * FPM_PAGE_SIZE);





 if (size_class == DSA_SCLASS_BLOCK_OF_SPANS)
 {




  span_pointer = start_pointer;
 }


 init_span(area, span_pointer, pool, start_pointer, npages, size_class);
 for (i = 0; i < npages; ++i)
  segment_map->pagemap[first_page + i] = span_pointer;

 return 1;
}
