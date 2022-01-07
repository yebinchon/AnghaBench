
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bo_bdesc; int bo_pagesPerRange; int bo_rmAccess; } ;
struct TYPE_5__ {TYPE_2__* opaque; int xs_snapshot; } ;
typedef int Relation ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__ BrinOpaque ;


 TYPE_1__* RelationGetIndexScan (int ,int,int) ;
 int brinRevmapInitialize (int ,int *,int ) ;
 int brin_build_desc (int ) ;
 scalar_t__ palloc (int) ;

IndexScanDesc
brinbeginscan(Relation r, int nkeys, int norderbys)
{
 IndexScanDesc scan;
 BrinOpaque *opaque;

 scan = RelationGetIndexScan(r, nkeys, norderbys);

 opaque = (BrinOpaque *) palloc(sizeof(BrinOpaque));
 opaque->bo_rmAccess = brinRevmapInitialize(r, &opaque->bo_pagesPerRange,
              scan->xs_snapshot);
 opaque->bo_bdesc = brin_build_desc(r);
 scan->opaque = opaque;

 return scan;
}
