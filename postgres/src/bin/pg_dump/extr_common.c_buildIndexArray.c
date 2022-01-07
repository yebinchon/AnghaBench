
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int DumpableObject ;


 int DOCatalogIdCompare ;
 scalar_t__ pg_malloc (int) ;
 int qsort (void*,int,int,int ) ;

__attribute__((used)) static DumpableObject **
buildIndexArray(void *objArray, int numObjs, Size objSize)
{
 DumpableObject **ptrs;
 int i;

 ptrs = (DumpableObject **) pg_malloc(numObjs * sizeof(DumpableObject *));
 for (i = 0; i < numObjs; i++)
  ptrs[i] = (DumpableObject *) ((char *) objArray + i * objSize);


 if (numObjs > 1)
  qsort((void *) ptrs, numObjs, sizeof(DumpableObject *),
     DOCatalogIdCompare);

 return ptrs;
}
