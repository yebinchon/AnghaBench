
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IndexFetchTableData ;
typedef int IndexFetchHeapData ;


 int heapam_index_fetch_reset (int *) ;
 int pfree (int *) ;

__attribute__((used)) static void
heapam_index_fetch_end(IndexFetchTableData *scan)
{
 IndexFetchHeapData *hscan = (IndexFetchHeapData *) scan;

 heapam_index_fetch_reset(scan);

 pfree(hscan);
}
