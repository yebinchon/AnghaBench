
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Relation ;
typedef int BlockNumber ;


 int HEAP_OVERHEAD_BYTES_PER_TUPLE ;
 int HEAP_USABLE_BYTES_PER_PAGE ;
 int table_block_relation_estimate_size (int ,int *,int *,double*,double*,int ,int ) ;

__attribute__((used)) static void
heapam_estimate_rel_size(Relation rel, int32 *attr_widths,
       BlockNumber *pages, double *tuples,
       double *allvisfrac)
{
 table_block_relation_estimate_size(rel, attr_widths, pages,
            tuples, allvisfrac,
            HEAP_OVERHEAD_BYTES_PER_TUPLE,
            HEAP_USABLE_BYTES_PER_PAGE);
}
