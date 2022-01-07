
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int ReplicationState ;


 int ReplicationStateCtl ;
 int add_size (int ,int ) ;
 scalar_t__ max_replication_slots ;
 int mul_size (scalar_t__,int) ;
 int offsetof (int ,int ) ;
 int states ;

Size
ReplicationOriginShmemSize(void)
{
 Size size = 0;






 if (max_replication_slots == 0)
  return size;

 size = add_size(size, offsetof(ReplicationStateCtl, states));

 size = add_size(size,
     mul_size(max_replication_slots, sizeof(ReplicationState)));
 return size;
}
