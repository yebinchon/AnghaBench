
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
typedef scalar_t__ u64 ;
struct kvm_stat_data {int offset; scalar_t__ kvm; } ;


 int EINVAL ;

__attribute__((used)) static int vm_stat_clear_per_vm(void *data, u64 val)
{
 struct kvm_stat_data *stat_data = (struct kvm_stat_data *)data;

 if (val)
  return -EINVAL;

 *(ulong *)((void *)stat_data->kvm + stat_data->offset) = 0;

 return 0;
}
