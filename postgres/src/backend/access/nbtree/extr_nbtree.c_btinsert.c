
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
 int _bt_doinsert (int ,TYPE_1__*,int ,int ) ;
 TYPE_1__* index_form_tuple (int ,int *,int*) ;
 int pfree (TYPE_1__*) ;

bool
btinsert(Relation rel, Datum *values, bool *isnull,
   ItemPointer ht_ctid, Relation heapRel,
   IndexUniqueCheck checkUnique,
   IndexInfo *indexInfo)
{
 bool result;
 IndexTuple itup;


 itup = index_form_tuple(RelationGetDescr(rel), values, isnull);
 itup->t_tid = *ht_ctid;

 result = _bt_doinsert(rel, itup, checkUnique, heapRel);

 pfree(itup);

 return result;
}
