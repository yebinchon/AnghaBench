
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 int ** kvm_device_ops_table ;

void kvm_unregister_device_ops(u32 type)
{
 if (kvm_device_ops_table[type] != ((void*)0))
  kvm_device_ops_table[type] = ((void*)0);
}
