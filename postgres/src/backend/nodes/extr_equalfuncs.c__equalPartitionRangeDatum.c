
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PartitionRangeDatum ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int kind ;
 int location ;
 int value ;

__attribute__((used)) static bool
_equalPartitionRangeDatum(const PartitionRangeDatum *a, const PartitionRangeDatum *b)
{
 COMPARE_SCALAR_FIELD(kind);
 COMPARE_NODE_FIELD(value);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
