
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int nused; scalar_t__ magic; int parent; } ;
struct TYPE_11__ {TYPE_1__* internal_key; } ;
struct TYPE_13__ {TYPE_3__ hdr; TYPE_2__ u; } ;
struct TYPE_10__ {int first_page; int child; } ;
typedef int Size ;
typedef TYPE_4__ FreePageBtree ;


 int Assert (int) ;
 scalar_t__ FREE_PAGE_INTERNAL_MAGIC ;
 int FreePageBtreeFirstKey (TYPE_4__*) ;
 int FreePageBtreeSearchInternal (TYPE_4__*,int) ;
 TYPE_4__* relptr_access (char*,int ) ;

__attribute__((used)) static FreePageBtree *
FreePageBtreeFindRightSibling(char *base, FreePageBtree *btp)
{
 FreePageBtree *p = btp;
 int levels = 0;


 for (;;)
 {
  Size first_page;
  Size index;

  first_page = FreePageBtreeFirstKey(p);
  p = relptr_access(base, p->hdr.parent);

  if (p == ((void*)0))
   return ((void*)0);

  index = FreePageBtreeSearchInternal(p, first_page);
  if (index < p->hdr.nused - 1)
  {
   Assert(p->u.internal_key[index].first_page == first_page);
   p = relptr_access(base, p->u.internal_key[index + 1].child);
   break;
  }
  Assert(index == p->hdr.nused - 1);
  ++levels;
 }


 while (levels > 0)
 {
  Assert(p->hdr.magic == FREE_PAGE_INTERNAL_MAGIC);
  p = relptr_access(base, p->u.internal_key[0].child);
  --levels;
 }
 Assert(p->hdr.magic == btp->hdr.magic);

 return p;
}
