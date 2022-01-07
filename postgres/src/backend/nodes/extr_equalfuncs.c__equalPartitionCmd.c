
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PartitionCmd ;


 int COMPARE_NODE_FIELD (int ) ;
 int bound ;
 int name ;

__attribute__((used)) static bool
_equalPartitionCmd(const PartitionCmd *a, const PartitionCmd *b)
{
 COMPARE_NODE_FIELD(name);
 COMPARE_NODE_FIELD(bound);

 return 1;
}
