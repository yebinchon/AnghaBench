
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_tid; } ;
typedef int Relation ;
typedef int * ItemPointer ;
typedef int IndexUniqueCheck ;
typedef TYPE_1__* IndexTuple ;
typedef int IndexInfo ;
typedef int Datum ;


 int RelationGetDescr (int ) ;
 int _hash_convert_tuple (int ,int *,int*,int *,int*) ;
 int _hash_doinsert (int ,TYPE_1__*,int ) ;
 TYPE_1__* index_form_tuple (int ,int *,int*) ;
 int pfree (TYPE_1__*) ;

bool
hashinsert(Relation rel, Datum *values, bool *isnull,
     ItemPointer ht_ctid, Relation heapRel,
     IndexUniqueCheck checkUnique,
     IndexInfo *indexInfo)
{
 Datum index_values[1];
 bool index_isnull[1];
 IndexTuple itup;


 if (!_hash_convert_tuple(rel,
        values, isnull,
        index_values, index_isnull))
  return 0;


 itup = index_form_tuple(RelationGetDescr(rel), index_values, index_isnull);
 itup->t_tid = *ht_ctid;

 _hash_doinsert(rel, itup, heapRel);

 pfree(itup);

 return 0;
}
