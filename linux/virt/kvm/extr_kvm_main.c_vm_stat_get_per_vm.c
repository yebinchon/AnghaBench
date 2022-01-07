
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u64 ;
struct kvm_stat_data {int offset; scalar_t__ kvm; } ;



__attribute__((used)) static int vm_stat_get_per_vm(void *data, u64 *val)
{
 struct kvm_stat_data *stat_data = (struct kvm_stat_data *)data;

 *val = *(ulong *)((void *)stat_data->kvm + stat_data->offset);

 return 0;
}
