
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 scalar_t__ ESRCH ;
 int NUMTHREADS ;
 int Sleep (int) ;
 int assert (int) ;
 int func ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_detach (int ) ;
 scalar_t__ pthread_kill (int ,int ) ;

int
main(int argc, char * argv[])
{
 pthread_t id[NUMTHREADS];
 int i;


 for (i = 0; i < NUMTHREADS; i++)
   {
     assert(pthread_create(&id[i], ((void*)0), func, (void *)(size_t)i) == 0);
   }


 Sleep(NUMTHREADS/2 * 10 + 50);

 for (i = 0; i < NUMTHREADS; i++)
   {
     assert(pthread_detach(id[i]) == 0);
   }

 Sleep(NUMTHREADS * 10 + 100);






 for (i = 0; i < NUMTHREADS; i++)
   {
     assert(pthread_kill(id[i], 0) == ESRCH);
   }


 return 0;
}
