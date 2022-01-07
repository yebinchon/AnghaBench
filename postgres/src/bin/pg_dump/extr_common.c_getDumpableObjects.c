
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DumpableObject ;


 int allocedDumpIds ;
 int ** dumpIdMap ;
 scalar_t__ pg_malloc (int) ;

void
getDumpableObjects(DumpableObject ***objs, int *numObjs)
{
 int i,
    j;

 *objs = (DumpableObject **)
  pg_malloc(allocedDumpIds * sizeof(DumpableObject *));
 j = 0;
 for (i = 1; i < allocedDumpIds; i++)
 {
  if (dumpIdMap[i])
   (*objs)[j++] = dumpIdMap[i];
 }
 *numObjs = j;
}
