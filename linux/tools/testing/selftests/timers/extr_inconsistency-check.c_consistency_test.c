
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timespec {long tv_sec; scalar_t__ tv_nsec; } ;


 int CALLS_PER_LOOP ;
 unsigned long long NSEC_PER_SEC ;
 int clock_gettime (int,struct timespec*) ;
 char* ctime (int *) ;
 int fflush (int ) ;
 int in_order (struct timespec,struct timespec) ;
 int printf (char*,...) ;
 int time (int ) ;

int consistency_test(int clock_type, unsigned long seconds)
{
 struct timespec list[CALLS_PER_LOOP];
 int i, inconsistent;
 long now, then;
 time_t t;
 char *start_str;

 clock_gettime(clock_type, &list[0]);
 now = then = list[0].tv_sec;


 t = time(0);
 start_str = ctime(&t);

 while (seconds == -1 || now - then < seconds) {
  inconsistent = -1;


  for (i = 0; i < CALLS_PER_LOOP; i++)
   clock_gettime(clock_type, &list[i]);


  for (i = 0; i < CALLS_PER_LOOP - 1; i++)
   if (!in_order(list[i], list[i+1]))
    inconsistent = i;


  if (inconsistent >= 0) {
   unsigned long long delta;

   printf("\%s\n", start_str);
   for (i = 0; i < CALLS_PER_LOOP; i++) {
    if (i == inconsistent)
     printf("--------------------\n");
    printf("%lu:%lu\n", list[i].tv_sec,
       list[i].tv_nsec);
    if (i == inconsistent + 1)
     printf("--------------------\n");
   }
   delta = list[inconsistent].tv_sec * NSEC_PER_SEC;
   delta += list[inconsistent].tv_nsec;
   delta -= list[inconsistent+1].tv_sec * NSEC_PER_SEC;
   delta -= list[inconsistent+1].tv_nsec;
   printf("Delta: %llu ns\n", delta);
   fflush(0);

   t = time(0);
   printf("%s\n", ctime(&t));
   printf("[FAILED]\n");
   return -1;
  }
  now = list[0].tv_sec;
 }
 printf("[OK]\n");
 return 0;
}
