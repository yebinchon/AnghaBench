
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int Relation ;
typedef int ParallelBlockTableScanDescData ;



Size
table_block_parallelscan_estimate(Relation rel)
{
 return sizeof(ParallelBlockTableScanDescData);
}
