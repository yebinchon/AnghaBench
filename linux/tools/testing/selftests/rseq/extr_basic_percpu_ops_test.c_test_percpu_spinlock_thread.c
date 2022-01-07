
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spinlock_test_data {int reps; int lock; TYPE_1__* c; } ;
struct TYPE_2__ {int count; } ;


 int abort () ;
 int errno ;
 int fprintf (int ,char*,int,char*) ;
 int rseq_percpu_unlock (int *,int) ;
 scalar_t__ rseq_register_current_thread () ;
 int rseq_this_cpu_lock (int *) ;
 scalar_t__ rseq_unregister_current_thread () ;
 int stderr ;
 char* strerror (int) ;

void *test_percpu_spinlock_thread(void *arg)
{
 struct spinlock_test_data *data = arg;
 int i, cpu;

 if (rseq_register_current_thread()) {
  fprintf(stderr, "Error: rseq_register_current_thread(...) failed(%d): %s\n",
   errno, strerror(errno));
  abort();
 }
 for (i = 0; i < data->reps; i++) {
  cpu = rseq_this_cpu_lock(&data->lock);
  data->c[cpu].count++;
  rseq_percpu_unlock(&data->lock, cpu);
 }
 if (rseq_unregister_current_thread()) {
  fprintf(stderr, "Error: rseq_unregister_current_thread(...) failed(%d): %s\n",
   errno, strerror(errno));
  abort();
 }

 return ((void*)0);
}
