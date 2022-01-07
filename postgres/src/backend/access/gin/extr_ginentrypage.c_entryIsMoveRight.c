
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entryCategory; int entryKey; int entryAttnum; int ginstate; } ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int IndexTuple ;
typedef int GinNullCategory ;
typedef TYPE_1__* GinBtree ;
typedef int Datum ;


 scalar_t__ GinPageRightMost (int ) ;
 int getRightMostTuple (int ) ;
 scalar_t__ ginCompareAttEntries (int ,int ,int ,int ,int ,int ,int ) ;
 int gintuple_get_attrnum (int ,int ) ;
 int gintuple_get_key (int ,int ,int *) ;

__attribute__((used)) static bool
entryIsMoveRight(GinBtree btree, Page page)
{
 IndexTuple itup;
 OffsetNumber attnum;
 Datum key;
 GinNullCategory category;

 if (GinPageRightMost(page))
  return 0;

 itup = getRightMostTuple(page);
 attnum = gintuple_get_attrnum(btree->ginstate, itup);
 key = gintuple_get_key(btree->ginstate, itup, &category);

 if (ginCompareAttEntries(btree->ginstate,
        btree->entryAttnum, btree->entryKey, btree->entryCategory,
        attnum, key, category) > 0)
  return 1;

 return 0;
}
