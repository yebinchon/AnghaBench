
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DumpableObject ;
typedef void* DumpId ;


 int TopoSort (int **,int,int **,int*) ;
 int findDependencyLoops (int **,int,int) ;
 int free (int **) ;
 int memcpy (int **,int **,int) ;
 scalar_t__ pg_malloc (int) ;
 void* postDataBoundId ;
 void* preDataBoundId ;

void
sortDumpableObjects(DumpableObject **objs, int numObjs,
     DumpId preBoundaryId, DumpId postBoundaryId)
{
 DumpableObject **ordering;
 int nOrdering;

 if (numObjs <= 0)
  return;





 preDataBoundId = preBoundaryId;
 postDataBoundId = postBoundaryId;

 ordering = (DumpableObject **) pg_malloc(numObjs * sizeof(DumpableObject *));
 while (!TopoSort(objs, numObjs, ordering, &nOrdering))
  findDependencyLoops(ordering, nOrdering, numObjs);

 memcpy(objs, ordering, numObjs * sizeof(DumpableObject *));

 free(ordering);
}
