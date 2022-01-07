
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int CLOCK_MONOTONIC ;
 int LISTSIZE ;
 int checklist (struct timespec*,int) ;
 int clock_gettime (int ,struct timespec*) ;
 int done ;

void *independent_thread(void *arg)
{
 struct timespec my_list[LISTSIZE];
 int count;

 while (!done) {

  for (count = 0; count < LISTSIZE; count++)
   clock_gettime(CLOCK_MONOTONIC, &my_list[count]);
  checklist(my_list, LISTSIZE);
 }
 return ((void*)0);
}
