
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static bool kvm_pmu_idx_is_high_counter(u64 select_idx)
{
 return select_idx & 0x1;
}
