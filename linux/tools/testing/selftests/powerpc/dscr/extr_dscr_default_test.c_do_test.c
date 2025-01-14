
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long COUNT ;
 unsigned long READ_ONCE (unsigned long) ;
 unsigned long dscr ;
 int fprintf (int ,char*,unsigned long,unsigned long,unsigned long) ;
 unsigned long get_dscr () ;
 unsigned long get_dscr_usr () ;
 int pthread_exit (int*) ;
 int* result ;
 int rmb () ;
 unsigned long sequence ;
 int stderr ;

__attribute__((used)) static void *do_test(void *in)
{
 unsigned long thread = (unsigned long)in;
 unsigned long i;

 for (i = 0; i < COUNT; i++) {
  unsigned long d, cur_dscr, cur_dscr_usr;
  unsigned long s1, s2;

  s1 = READ_ONCE(sequence);
  if (s1 & 1)
   continue;
  rmb();

  d = dscr;
  cur_dscr = get_dscr();
  cur_dscr_usr = get_dscr_usr();

  rmb();
  s2 = sequence;

  if (s1 != s2)
   continue;

  if (cur_dscr != d) {
   fprintf(stderr, "thread %ld kernel DSCR should be %ld "
    "but is %ld\n", thread, d, cur_dscr);
   result[thread] = 1;
   pthread_exit(&result[thread]);
  }

  if (cur_dscr_usr != d) {
   fprintf(stderr, "thread %ld user DSCR should be %ld "
    "but is %ld\n", thread, d, cur_dscr_usr);
   result[thread] = 1;
   pthread_exit(&result[thread]);
  }
 }
 result[thread] = 0;
 pthread_exit(&result[thread]);
}
