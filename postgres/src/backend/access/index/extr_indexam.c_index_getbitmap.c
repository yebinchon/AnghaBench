
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_8__ {TYPE_1__* rd_indam; } ;
struct TYPE_7__ {int kill_prior_tuple; TYPE_4__* indexRelation; } ;
struct TYPE_6__ {int (* amgetbitmap ) (TYPE_2__*,int *) ;} ;
typedef int TIDBitmap ;
typedef TYPE_2__* IndexScanDesc ;


 int CHECK_SCAN_PROCEDURE (int ) ;
 int SCAN_CHECKS ;
 int amgetbitmap ;
 int pgstat_count_index_tuples (TYPE_4__*,int ) ;
 int stub1 (TYPE_2__*,int *) ;

int64
index_getbitmap(IndexScanDesc scan, TIDBitmap *bitmap)
{
 int64 ntids;

 SCAN_CHECKS;
 CHECK_SCAN_PROCEDURE(amgetbitmap);


 scan->kill_prior_tuple = 0;




 ntids = scan->indexRelation->rd_indam->amgetbitmap(scan, bitmap);

 pgstat_count_index_tuples(scan->indexRelation, ntids);

 return ntids;
}
