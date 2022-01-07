
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int preempt_disable_count ;

__attribute__((used)) static inline int preempt_count(void)
{
 return preempt_disable_count;
}
