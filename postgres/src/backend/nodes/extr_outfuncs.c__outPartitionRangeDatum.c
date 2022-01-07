
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int PartitionRangeDatum ;


 int PartitionRangeDatumKind ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int kind ;
 int location ;
 int value ;

__attribute__((used)) static void
_outPartitionRangeDatum(StringInfo str, const PartitionRangeDatum *node)
{
 WRITE_NODE_TYPE("PARTITIONRANGEDATUM");

 WRITE_ENUM_FIELD(kind, PartitionRangeDatumKind);
 WRITE_NODE_FIELD(value);
 WRITE_LOCATION_FIELD(location);
}
