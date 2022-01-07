
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sort ;
typedef int Relids ;
typedef int Plan ;
typedef int Oid ;
typedef int List ;
typedef int AttrNumber ;


 int * make_sort (int *,int,int *,int *,int *,int*) ;
 int * prepare_sort_from_pathkeys (int *,int *,int ,int *,int,int*,int **,int **,int **,int**) ;

__attribute__((used)) static Sort *
make_sort_from_pathkeys(Plan *lefttree, List *pathkeys, Relids relids)
{
 int numsortkeys;
 AttrNumber *sortColIdx;
 Oid *sortOperators;
 Oid *collations;
 bool *nullsFirst;


 lefttree = prepare_sort_from_pathkeys(lefttree, pathkeys,
            relids,
            ((void*)0),
            0,
            &numsortkeys,
            &sortColIdx,
            &sortOperators,
            &collations,
            &nullsFirst);


 return make_sort(lefttree, numsortkeys,
      sortColIdx, sortOperators,
      collations, nullsFirst);
}
