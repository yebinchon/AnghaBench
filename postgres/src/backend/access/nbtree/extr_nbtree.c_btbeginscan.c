
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * markTuples; int currTuples; scalar_t__ numKilled; int * killedItems; int * arrayContext; int * arrayKeys; scalar_t__ numArrayKeys; int * arrayKeyData; int * keyData; int markPos; int currPos; } ;
struct TYPE_5__ {int numberOfKeys; TYPE_2__* opaque; int xs_itupdesc; } ;
typedef int ScanKeyData ;
typedef int * ScanKey ;
typedef int Relation ;
typedef TYPE_1__* IndexScanDesc ;
typedef int BTScanOpaqueData ;
typedef TYPE_2__* BTScanOpaque ;


 int Assert (int) ;
 int BTScanPosInvalidate (int ) ;
 int RelationGetDescr (int ) ;
 TYPE_1__* RelationGetIndexScan (int ,int,int) ;
 scalar_t__ palloc (int) ;

IndexScanDesc
btbeginscan(Relation rel, int nkeys, int norderbys)
{
 IndexScanDesc scan;
 BTScanOpaque so;


 Assert(norderbys == 0);


 scan = RelationGetIndexScan(rel, nkeys, norderbys);


 so = (BTScanOpaque) palloc(sizeof(BTScanOpaqueData));
 BTScanPosInvalidate(so->currPos);
 BTScanPosInvalidate(so->markPos);
 if (scan->numberOfKeys > 0)
  so->keyData = (ScanKey) palloc(scan->numberOfKeys * sizeof(ScanKeyData));
 else
  so->keyData = ((void*)0);

 so->arrayKeyData = ((void*)0);
 so->numArrayKeys = 0;
 so->arrayKeys = ((void*)0);
 so->arrayContext = ((void*)0);

 so->killedItems = ((void*)0);
 so->numKilled = 0;






 so->currTuples = so->markTuples = ((void*)0);

 scan->xs_itupdesc = RelationGetDescr(rel);

 scan->opaque = so;

 return scan;
}
