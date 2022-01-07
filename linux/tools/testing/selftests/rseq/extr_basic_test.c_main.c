
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
 int test_cpu_pointer () ;

int main(int argc, char **argv)
{
 if (rseq_register_current_thread()) {
  fprintf(stderr, "Error: rseq_register_current_thread(...) failed(%d): %s\n",
   errno, strerror(errno));
  goto init_thread_error;
 }
 printf("testing current cpu\n");
 test_cpu_pointer();
 if (rseq_unregister_current_thread()) {
  fprintf(stderr, "Error: rseq_unregister_current_thread(...) failed(%d): %s\n",
   errno, strerror(errno));
  goto init_thread_error;
 }
 return 0;

init_thread_error:
 return -1;
}
