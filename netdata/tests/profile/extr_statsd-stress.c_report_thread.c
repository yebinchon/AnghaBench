
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_data {scalar_t__ counter; } ;


 int printf (char*,...) ;
 size_t run_threads ;
 int sleep (int) ;

__attribute__((used)) static void *report_thread(void *__data) {
 struct thread_data *data = (struct thread_data *)__data;

 size_t last = 0;
 for (;;) {
  size_t i;
  size_t total = 0;
  for(i = 0; i < run_threads ;i++)
   total += data[i].counter;

  printf("%zu metrics/s\n", total-last);
  last = total;

  sleep(1);
  printf("\033[F\033[J");
 }

 return ((void*)0);
}
