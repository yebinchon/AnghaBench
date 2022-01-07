
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int preempt_disable_count ;

__attribute__((used)) static inline void might_sleep(void)
{
 BUG_ON(preempt_disable_count);
}
