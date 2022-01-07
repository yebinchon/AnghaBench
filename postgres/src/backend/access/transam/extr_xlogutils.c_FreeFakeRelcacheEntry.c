
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * rd_smgr; } ;
typedef TYPE_1__* Relation ;


 int pfree (TYPE_1__*) ;
 int smgrclearowner (int **,int *) ;

void
FreeFakeRelcacheEntry(Relation fakerel)
{

 if (fakerel->rd_smgr != ((void*)0))
  smgrclearowner(&fakerel->rd_smgr, fakerel->rd_smgr);
 pfree(fakerel);
}
