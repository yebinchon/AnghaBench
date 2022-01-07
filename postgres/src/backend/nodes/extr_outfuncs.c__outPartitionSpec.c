
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int PartitionSpec ;


 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int location ;
 int partParams ;
 int strategy ;

__attribute__((used)) static void
_outPartitionSpec(StringInfo str, const PartitionSpec *node)
{
 WRITE_NODE_TYPE("PARTITIONSPEC");

 WRITE_STRING_FIELD(strategy);
 WRITE_NODE_FIELD(partParams);
 WRITE_LOCATION_FIELD(location);
}
