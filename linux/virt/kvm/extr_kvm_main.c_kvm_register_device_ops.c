
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct kvm_device_ops {int dummy; } ;


 size_t ARRAY_SIZE (struct kvm_device_ops**) ;
 int EEXIST ;
 int ENOSPC ;
 struct kvm_device_ops** kvm_device_ops_table ;

int kvm_register_device_ops(struct kvm_device_ops *ops, u32 type)
{
 if (type >= ARRAY_SIZE(kvm_device_ops_table))
  return -ENOSPC;

 if (kvm_device_ops_table[type] != ((void*)0))
  return -EEXIST;

 kvm_device_ops_table[type] = ops;
 return 0;
}
