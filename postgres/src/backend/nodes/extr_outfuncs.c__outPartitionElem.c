
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int PartitionElem ;


 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int collation ;
 int expr ;
 int location ;
 int name ;
 int opclass ;

__attribute__((used)) static void
_outPartitionElem(StringInfo str, const PartitionElem *node)
{
 WRITE_NODE_TYPE("PARTITIONELEM");

 WRITE_STRING_FIELD(name);
 WRITE_NODE_FIELD(expr);
 WRITE_NODE_FIELD(collation);
 WRITE_NODE_FIELD(opclass);
 WRITE_LOCATION_FIELD(location);
}
