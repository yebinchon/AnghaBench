
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PartitionSpec ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int location ;
 int partParams ;
 int strategy ;

__attribute__((used)) static bool
_equalPartitionSpec(const PartitionSpec *a, const PartitionSpec *b)
{
 COMPARE_STRING_FIELD(strategy);
 COMPARE_NODE_FIELD(partParams);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
