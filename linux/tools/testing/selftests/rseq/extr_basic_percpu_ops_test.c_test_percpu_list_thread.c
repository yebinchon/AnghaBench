
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_list_node {int dummy; } ;
struct percpu_list {int dummy; } ;


 int abort () ;
 int errno ;
 int fprintf (int ,char*,int,char*) ;
 scalar_t__ rseq_register_current_thread () ;
 scalar_t__ rseq_unregister_current_thread () ;
 int sched_yield () ;
 int stderr ;
 char* strerror (int) ;
 struct percpu_list_node* this_cpu_list_pop (struct percpu_list*,int *) ;
 int this_cpu_list_push (struct percpu_list*,struct percpu_list_node*,int *) ;

void *test_percpu_list_thread(void *arg)
{
 int i;
 struct percpu_list *list = (struct percpu_list *)arg;

 if (rseq_register_current_thread()) {
  fprintf(stderr, "Error: rseq_register_current_thread(...) failed(%d): %s\n",
   errno, strerror(errno));
  abort();
 }

 for (i = 0; i < 100000; i++) {
  struct percpu_list_node *node;

  node = this_cpu_list_pop(list, ((void*)0));
  sched_yield();
  if (node)
   this_cpu_list_push(list, node, ((void*)0));
 }

 if (rseq_unregister_current_thread()) {
  fprintf(stderr, "Error: rseq_unregister_current_thread(...) failed(%d): %s\n",
   errno, strerror(errno));
  abort();
 }

 return ((void*)0);
}
