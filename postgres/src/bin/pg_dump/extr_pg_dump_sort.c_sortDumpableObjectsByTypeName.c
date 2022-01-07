
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DumpableObject ;


 int DOTypeNameCompare ;
 int qsort (void*,int,int,int ) ;

void
sortDumpableObjectsByTypeName(DumpableObject **objs, int numObjs)
{
 if (numObjs > 1)
  qsort((void *) objs, numObjs, sizeof(DumpableObject *),
     DOTypeNameCompare);
}
