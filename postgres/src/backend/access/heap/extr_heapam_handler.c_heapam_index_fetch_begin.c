
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rel; } ;
struct TYPE_6__ {TYPE_1__ xs_base; int xs_cbuf; } ;
typedef int Relation ;
typedef TYPE_1__ IndexFetchTableData ;
typedef TYPE_2__ IndexFetchHeapData ;


 int InvalidBuffer ;
 TYPE_2__* palloc0 (int) ;

__attribute__((used)) static IndexFetchTableData *
heapam_index_fetch_begin(Relation rel)
{
 IndexFetchHeapData *hscan = palloc0(sizeof(IndexFetchHeapData));

 hscan->xs_base.rel = rel;
 hscan->xs_cbuf = InvalidBuffer;

 return &hscan->xs_base;
}
