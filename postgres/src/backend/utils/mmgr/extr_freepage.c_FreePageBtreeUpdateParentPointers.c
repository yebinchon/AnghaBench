
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ magic; size_t nused; int parent; } ;
struct TYPE_9__ {TYPE_1__* internal_key; } ;
struct TYPE_11__ {TYPE_3__ hdr; TYPE_2__ u; } ;
struct TYPE_8__ {int child; } ;
typedef size_t Size ;
typedef TYPE_4__ FreePageBtree ;


 int Assert (int) ;
 scalar_t__ FREE_PAGE_INTERNAL_MAGIC ;
 TYPE_4__* relptr_access (char*,int ) ;
 int relptr_store (char*,int ,TYPE_4__*) ;

__attribute__((used)) static void
FreePageBtreeUpdateParentPointers(char *base, FreePageBtree *btp)
{
 Size i;

 Assert(btp->hdr.magic == FREE_PAGE_INTERNAL_MAGIC);
 for (i = 0; i < btp->hdr.nused; ++i)
 {
  FreePageBtree *child;

  child = relptr_access(base, btp->u.internal_key[i].child);
  relptr_store(base, child->hdr.parent, btp);
 }
}
