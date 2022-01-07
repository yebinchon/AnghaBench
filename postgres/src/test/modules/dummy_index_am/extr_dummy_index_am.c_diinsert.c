
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int ItemPointer ;
typedef int IndexUniqueCheck ;
typedef int IndexInfo ;
typedef int Datum ;



__attribute__((used)) static bool
diinsert(Relation index, Datum *values, bool *isnull,
   ItemPointer ht_ctid, Relation heapRel,
   IndexUniqueCheck checkUnique,
   IndexInfo *indexInfo)
{

 return 0;
}
