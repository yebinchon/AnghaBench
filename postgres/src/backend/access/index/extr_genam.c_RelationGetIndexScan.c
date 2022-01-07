
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numberOfKeys; int numberOfOrderBys; int xs_want_itup; int kill_prior_tuple; int ignore_killed_tuples; int * xs_hitupdesc; int * xs_hitup; int * xs_itupdesc; int * xs_itup; int * opaque; int xactStartedInRecovery; int * orderByData; int * keyData; int xs_snapshot; int indexRelation; int * xs_heapfetch; int * heapRelation; } ;
typedef int ScanKeyData ;
typedef void* ScanKey ;
typedef int Relation ;
typedef int IndexScanDescData ;
typedef TYPE_1__* IndexScanDesc ;


 int InvalidSnapshot ;
 int TransactionStartedDuringRecovery () ;
 scalar_t__ palloc (int) ;

IndexScanDesc
RelationGetIndexScan(Relation indexRelation, int nkeys, int norderbys)
{
 IndexScanDesc scan;

 scan = (IndexScanDesc) palloc(sizeof(IndexScanDescData));

 scan->heapRelation = ((void*)0);
 scan->xs_heapfetch = ((void*)0);
 scan->indexRelation = indexRelation;
 scan->xs_snapshot = InvalidSnapshot;
 scan->numberOfKeys = nkeys;
 scan->numberOfOrderBys = norderbys;




 if (nkeys > 0)
  scan->keyData = (ScanKey) palloc(sizeof(ScanKeyData) * nkeys);
 else
  scan->keyData = ((void*)0);
 if (norderbys > 0)
  scan->orderByData = (ScanKey) palloc(sizeof(ScanKeyData) * norderbys);
 else
  scan->orderByData = ((void*)0);

 scan->xs_want_itup = 0;
 scan->kill_prior_tuple = 0;
 scan->xactStartedInRecovery = TransactionStartedDuringRecovery();
 scan->ignore_killed_tuples = !scan->xactStartedInRecovery;

 scan->opaque = ((void*)0);

 scan->xs_itup = ((void*)0);
 scan->xs_itupdesc = ((void*)0);
 scan->xs_hitup = ((void*)0);
 scan->xs_hitupdesc = ((void*)0);

 return scan;
}
