
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hashso_buc_populated; int hashso_buc_split; scalar_t__ numKilled; int * killedItems; void* hashso_split_bucket_buf; void* hashso_bucket_buf; int currPos; } ;
struct TYPE_5__ {TYPE_2__* opaque; } ;
typedef int Relation ;
typedef TYPE_1__* IndexScanDesc ;
typedef int HashScanOpaqueData ;
typedef TYPE_2__* HashScanOpaque ;


 int Assert (int) ;
 int HashScanPosInvalidate (int ) ;
 void* InvalidBuffer ;
 TYPE_1__* RelationGetIndexScan (int ,int,int) ;
 scalar_t__ palloc (int) ;

IndexScanDesc
hashbeginscan(Relation rel, int nkeys, int norderbys)
{
 IndexScanDesc scan;
 HashScanOpaque so;


 Assert(norderbys == 0);

 scan = RelationGetIndexScan(rel, nkeys, norderbys);

 so = (HashScanOpaque) palloc(sizeof(HashScanOpaqueData));
 HashScanPosInvalidate(so->currPos);
 so->hashso_bucket_buf = InvalidBuffer;
 so->hashso_split_bucket_buf = InvalidBuffer;

 so->hashso_buc_populated = 0;
 so->hashso_buc_split = 0;

 so->killedItems = ((void*)0);
 so->numKilled = 0;

 scan->opaque = so;

 return scan;
}
