
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* indexRelation; } ;
struct TYPE_7__ {TYPE_1__* rd_indam; } ;
struct TYPE_6__ {int (* ammarkpos ) (TYPE_3__*) ;} ;
typedef TYPE_3__* IndexScanDesc ;


 int CHECK_SCAN_PROCEDURE (int ) ;
 int SCAN_CHECKS ;
 int ammarkpos ;
 int stub1 (TYPE_3__*) ;

void
index_markpos(IndexScanDesc scan)
{
 SCAN_CHECKS;
 CHECK_SCAN_PROCEDURE(ammarkpos);

 scan->indexRelation->rd_indam->ammarkpos(scan);
}
