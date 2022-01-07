
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int preempt_disable () ;

__attribute__((used)) static inline void preempt_disable_notrace(void)
{
 preempt_disable();
}
