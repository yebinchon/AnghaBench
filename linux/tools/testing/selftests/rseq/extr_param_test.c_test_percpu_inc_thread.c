
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inc_thread_test_data {long long reps; scalar_t__ reg; struct inc_test_data* data; } ;
struct inc_test_data {TYPE_1__* c; } ;
struct TYPE_2__ {int count; } ;


 int abort () ;
 scalar_t__ gettid () ;
 int nr_abort ;
 int opt_disable_rseq ;
 int printf_verbose (char*,int,long long,...) ;
 int rseq_addv (int *,int,int) ;
 int rseq_cpu_start () ;
 scalar_t__ rseq_register_current_thread () ;
 scalar_t__ rseq_unlikely (int) ;
 scalar_t__ rseq_unregister_current_thread () ;
 int signals_delivered ;

void *test_percpu_inc_thread(void *arg)
{
 struct inc_thread_test_data *thread_data = arg;
 struct inc_test_data *data = thread_data->data;
 long long i, reps;

 if (!opt_disable_rseq && thread_data->reg &&
     rseq_register_current_thread())
  abort();
 reps = thread_data->reps;
 for (i = 0; i < reps; i++) {
  int ret;

  do {
   int cpu;

   cpu = rseq_cpu_start();
   ret = rseq_addv(&data->c[cpu].count, 1, cpu);
  } while (rseq_unlikely(ret));

  if (i != 0 && !(i % (reps / 10)))
   printf_verbose("tid %d: count %lld\n", (int) gettid(), i);

 }
 printf_verbose("tid %d: number of rseq abort: %d, signals delivered: %u\n",
         (int) gettid(), nr_abort, signals_delivered);
 if (!opt_disable_rseq && thread_data->reg &&
     rseq_unregister_current_thread())
  abort();
 return ((void*)0);
}
