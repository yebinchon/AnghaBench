
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bo_bdesc; int bo_rmAccess; } ;
struct TYPE_5__ {scalar_t__ opaque; } ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__ BrinOpaque ;


 int brinRevmapTerminate (int ) ;
 int brin_free_desc (int ) ;
 int pfree (TYPE_2__*) ;

void
brinendscan(IndexScanDesc scan)
{
 BrinOpaque *opaque = (BrinOpaque *) scan->opaque;

 brinRevmapTerminate(opaque->bo_rmAccess);
 brin_free_desc(opaque->bo_bdesc);
 pfree(opaque);
}
