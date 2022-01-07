
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int ItemPointer ;
typedef int IndexInfo ;
typedef int EState ;
typedef int Datum ;


 int CEOUC_WAIT ;
 int check_exclusion_or_unique_constraint (int ,int ,int *,int ,int *,int*,int *,int,int ,int,int *) ;

void
check_exclusion_constraint(Relation heap, Relation index,
         IndexInfo *indexInfo,
         ItemPointer tupleid,
         Datum *values, bool *isnull,
         EState *estate, bool newIndex)
{
 (void) check_exclusion_or_unique_constraint(heap, index, indexInfo, tupleid,
            values, isnull,
            estate, newIndex,
            CEOUC_WAIT, 0, ((void*)0));
}
