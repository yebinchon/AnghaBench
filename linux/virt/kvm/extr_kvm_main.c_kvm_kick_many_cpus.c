
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int ack_flush ;
 struct cpumask* cpu_online_mask ;
 scalar_t__ cpumask_empty (struct cpumask const*) ;
 int smp_call_function_many (struct cpumask const*,int ,int *,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool kvm_kick_many_cpus(const struct cpumask *cpus, bool wait)
{
 if (unlikely(!cpus))
  cpus = cpu_online_mask;

 if (cpumask_empty(cpus))
  return 0;

 smp_call_function_many(cpus, ack_flush, ((void*)0), wait);
 return 1;
}
