
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_list_node {int dummy; } ;
struct percpu_list {int dummy; } ;


 int abort () ;
 scalar_t__ gettid () ;
 int nr_abort ;
 int opt_disable_rseq ;
 long long opt_reps ;
 scalar_t__ opt_yield ;
 int printf_verbose (char*,int,int ,int ) ;
 scalar_t__ rseq_register_current_thread () ;
 scalar_t__ rseq_unregister_current_thread () ;
 int sched_yield () ;
 int signals_delivered ;
 struct percpu_list_node* this_cpu_list_pop (struct percpu_list*,int *) ;
 int this_cpu_list_push (struct percpu_list*,struct percpu_list_node*,int *) ;

void *test_percpu_list_thread(void *arg)
{
 long long i, reps;
 struct percpu_list *list = (struct percpu_list *)arg;

 if (!opt_disable_rseq && rseq_register_current_thread())
  abort();

 reps = opt_reps;
 for (i = 0; i < reps; i++) {
  struct percpu_list_node *node;

  node = this_cpu_list_pop(list, ((void*)0));
  if (opt_yield)
   sched_yield();
  if (node)
   this_cpu_list_push(list, node, ((void*)0));
 }

 printf_verbose("tid %d: number of rseq abort: %d, signals delivered: %u\n",
         (int) gettid(), nr_abort, signals_delivered);
 if (!opt_disable_rseq && rseq_unregister_current_thread())
  abort();

 return ((void*)0);
}
