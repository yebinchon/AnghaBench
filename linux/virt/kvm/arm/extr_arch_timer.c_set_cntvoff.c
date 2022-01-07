
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int __kvm_timer_set_cntvoff ;
 int kvm_call_hyp (int ,int ,int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void set_cntvoff(u64 cntvoff)
{
 u32 low = lower_32_bits(cntvoff);
 u32 high = upper_32_bits(cntvoff);
 kvm_call_hyp(__kvm_timer_set_cntvoff, low, high);
}
