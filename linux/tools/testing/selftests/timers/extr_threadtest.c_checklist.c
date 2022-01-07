
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;


 int done ;
 int print_lock ;
 int printf (char*,...) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void checklist(struct timespec *list, int size)
{
 int i, j;
 struct timespec *a, *b;


 for (i = 0; i < size-1; i++) {
  a = &list[i];
  b = &list[i+1];


  if ((b->tv_sec <= a->tv_sec) &&
   (b->tv_nsec < a->tv_nsec)) {


   done = 1;


   pthread_mutex_lock(&print_lock);


   printf("\n");
   for (j = 0; j < size; j++) {
    if (j == i)
     printf("---------------\n");
    printf("%lu:%lu\n", list[j].tv_sec, list[j].tv_nsec);
    if (j == i+1)
     printf("---------------\n");
   }
   printf("[FAILED]\n");

   pthread_mutex_unlock(&print_lock);
  }
 }
}
