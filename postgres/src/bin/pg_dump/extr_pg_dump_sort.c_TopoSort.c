
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dumpId; int nDeps; int* dependencies; } ;
typedef TYPE_1__ DumpableObject ;
typedef int DumpId ;


 int addHeapElement (int,int*,int ) ;
 int fatal (char*,int) ;
 int free (int*) ;
 int getMaxDumpId () ;
 scalar_t__ pg_malloc (int) ;
 scalar_t__ pg_malloc0 (int) ;
 int removeHeapElement (int*,int ) ;

__attribute__((used)) static bool
TopoSort(DumpableObject **objs,
   int numObjs,
   DumpableObject **ordering,
   int *nOrdering)
{
 DumpId maxDumpId = getMaxDumpId();
 int *pendingHeap;
 int *beforeConstraints;
 int *idMap;
 DumpableObject *obj;
 int heapLength;
 int i,
    j,
    k;
 *nOrdering = numObjs;


 if (numObjs <= 0)
  return 1;


 pendingHeap = (int *) pg_malloc(numObjs * sizeof(int));
 beforeConstraints = (int *) pg_malloc0((maxDumpId + 1) * sizeof(int));
 idMap = (int *) pg_malloc((maxDumpId + 1) * sizeof(int));
 for (i = 0; i < numObjs; i++)
 {
  obj = objs[i];
  j = obj->dumpId;
  if (j <= 0 || j > maxDumpId)
   fatal("invalid dumpId %d", j);
  idMap[j] = i;
  for (j = 0; j < obj->nDeps; j++)
  {
   k = obj->dependencies[j];
   if (k <= 0 || k > maxDumpId)
    fatal("invalid dependency %d", k);
   beforeConstraints[k]++;
  }
 }
 heapLength = 0;
 for (i = numObjs; --i >= 0;)
 {
  if (beforeConstraints[objs[i]->dumpId] == 0)
   pendingHeap[heapLength++] = i;
 }
 i = numObjs;
 while (heapLength > 0)
 {

  j = removeHeapElement(pendingHeap, heapLength--);
  obj = objs[j];

  ordering[--i] = obj;

  for (k = 0; k < obj->nDeps; k++)
  {
   int id = obj->dependencies[k];

   if ((--beforeConstraints[id]) == 0)
    addHeapElement(idMap[id], pendingHeap, heapLength++);
  }
 }





 if (i != 0)
 {
  k = 0;
  for (j = 1; j <= maxDumpId; j++)
  {
   if (beforeConstraints[j] != 0)
    ordering[k++] = objs[idMap[j]];
  }
  *nOrdering = k;
 }


 free(pendingHeap);
 free(beforeConstraints);
 free(idMap);

 return (i == 0);
}
