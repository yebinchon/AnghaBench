
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PartitionElem ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int collation ;
 int expr ;
 int location ;
 int name ;
 int opclass ;

__attribute__((used)) static bool
_equalPartitionElem(const PartitionElem *a, const PartitionElem *b)
{
 COMPARE_STRING_FIELD(name);
 COMPARE_NODE_FIELD(expr);
 COMPARE_NODE_FIELD(collation);
 COMPARE_NODE_FIELD(opclass);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
