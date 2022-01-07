
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int blockno; } ;
struct TYPE_9__ {char status; } ;
struct TYPE_8__ {scalar_t__ status; TYPE_7__ entry1; int * pagetable; int mcxt; } ;
typedef TYPE_1__ TIDBitmap ;
typedef TYPE_2__ PagetableEntry ;


 int Assert (int) ;
 scalar_t__ TBM_HASH ;
 scalar_t__ TBM_ONE_PAGE ;
 int memcpy (TYPE_2__*,TYPE_7__*,int) ;
 int * pagetable_create (int ,int,TYPE_1__*) ;
 TYPE_2__* pagetable_insert (int *,int ,int*) ;

__attribute__((used)) static void
tbm_create_pagetable(TIDBitmap *tbm)
{
 Assert(tbm->status != TBM_HASH);
 Assert(tbm->pagetable == ((void*)0));

 tbm->pagetable = pagetable_create(tbm->mcxt, 128, tbm);


 if (tbm->status == TBM_ONE_PAGE)
 {
  PagetableEntry *page;
  bool found;
  char oldstatus;

  page = pagetable_insert(tbm->pagetable,
        tbm->entry1.blockno,
        &found);
  Assert(!found);
  oldstatus = page->status;
  memcpy(page, &tbm->entry1, sizeof(PagetableEntry));
  page->status = oldstatus;
 }

 tbm->status = TBM_HASH;
}
