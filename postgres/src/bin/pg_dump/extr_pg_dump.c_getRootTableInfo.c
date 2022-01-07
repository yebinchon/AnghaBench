
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ispartition; int numParents; struct TYPE_4__** parents; } ;
typedef TYPE_1__ TableInfo ;


 int Assert (int) ;

__attribute__((used)) static TableInfo *
getRootTableInfo(TableInfo *tbinfo)
{
 TableInfo *parentTbinfo;

 Assert(tbinfo->ispartition);
 Assert(tbinfo->numParents == 1);

 parentTbinfo = tbinfo->parents[0];
 while (parentTbinfo->ispartition)
 {
  Assert(parentTbinfo->numParents == 1);
  parentTbinfo = parentTbinfo->parents[0];
 }

 return parentTbinfo;
}
