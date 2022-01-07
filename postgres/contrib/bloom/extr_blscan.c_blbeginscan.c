
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * sign; int state; } ;
struct TYPE_5__ {TYPE_2__* opaque; int indexRelation; } ;
typedef int Relation ;
typedef TYPE_1__* IndexScanDesc ;
typedef int BloomScanOpaqueData ;
typedef TYPE_2__* BloomScanOpaque ;


 TYPE_1__* RelationGetIndexScan (int ,int,int) ;
 int initBloomState (int *,int ) ;
 scalar_t__ palloc (int) ;

IndexScanDesc
blbeginscan(Relation r, int nkeys, int norderbys)
{
 IndexScanDesc scan;
 BloomScanOpaque so;

 scan = RelationGetIndexScan(r, nkeys, norderbys);

 so = (BloomScanOpaque) palloc(sizeof(BloomScanOpaqueData));
 initBloomState(&so->state, scan->indexRelation);
 so->sign = ((void*)0);

 scan->opaque = so;

 return scan;
}
