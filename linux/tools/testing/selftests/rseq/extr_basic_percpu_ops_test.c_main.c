
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int fprintf (int ,char*,int,char*) ;
 int printf (char*) ;
 scalar_t__ rseq_register_current_thread () ;
 scalar_t__ rseq_unregister_current_thread () ;
 int stderr ;
 char* strerror (int) ;
 int test_percpu_list () ;
 int test_percpu_spinlock () ;

int main(int argc, char **argv)
{
 if (rseq_register_current_thread()) {
  fprintf(stderr, "Error: rseq_register_current_thread(...) failed(%d): %s\n",
   errno, strerror(errno));
  goto error;
 }
 printf("spinlock\n");
 test_percpu_spinlock();
 printf("percpu_list\n");
 test_percpu_list();
 if (rseq_unregister_current_thread()) {
  fprintf(stderr, "Error: rseq_unregister_current_thread(...) failed(%d): %s\n",
   errno, strerror(errno));
  goto error;
 }
 return 0;

error:
 return -1;
}
