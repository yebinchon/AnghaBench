
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int first_page; int child; } ;
struct TYPE_10__ {scalar_t__ magic; int nused; } ;
struct TYPE_9__ {TYPE_5__* internal_key; } ;
struct TYPE_11__ {TYPE_2__ hdr; TYPE_1__ u; } ;
typedef int Size ;
typedef int FreePageBtreeInternalKey ;
typedef TYPE_3__ FreePageBtree ;


 int Assert (int) ;
 int FPM_ITEMS_PER_INTERNAL_PAGE ;
 scalar_t__ FREE_PAGE_INTERNAL_MAGIC ;
 int memmove (TYPE_5__*,TYPE_5__*,int) ;
 int relptr_store (char*,int ,TYPE_3__*) ;

__attribute__((used)) static void
FreePageBtreeInsertInternal(char *base, FreePageBtree *btp, Size index,
       Size first_page, FreePageBtree *child)
{
 Assert(btp->hdr.magic == FREE_PAGE_INTERNAL_MAGIC);
 Assert(btp->hdr.nused <= FPM_ITEMS_PER_INTERNAL_PAGE);
 Assert(index <= btp->hdr.nused);
 memmove(&btp->u.internal_key[index + 1], &btp->u.internal_key[index],
   sizeof(FreePageBtreeInternalKey) * (btp->hdr.nused - index));
 btp->u.internal_key[index].first_page = first_page;
 relptr_store(base, btp->u.internal_key[index].child, child);
 ++btp->hdr.nused;
}
