
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rcu_reader () ;

void *thread_process_reader(void *arg)
{
 rcu_reader();

 return ((void*)0);
}
