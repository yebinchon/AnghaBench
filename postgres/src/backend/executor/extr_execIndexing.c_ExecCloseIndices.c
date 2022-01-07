
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ri_NumIndices; int ** ri_IndexRelationDescs; } ;
typedef TYPE_1__ ResultRelInfo ;
typedef int ** RelationPtr ;


 int RowExclusiveLock ;
 int index_close (int *,int ) ;

void
ExecCloseIndices(ResultRelInfo *resultRelInfo)
{
 int i;
 int numIndices;
 RelationPtr indexDescs;

 numIndices = resultRelInfo->ri_NumIndices;
 indexDescs = resultRelInfo->ri_IndexRelationDescs;

 for (i = 0; i < numIndices; i++)
 {
  if (indexDescs[i] == ((void*)0))
   continue;


  index_close(indexDescs[i], RowExclusiveLock);
 }





}
