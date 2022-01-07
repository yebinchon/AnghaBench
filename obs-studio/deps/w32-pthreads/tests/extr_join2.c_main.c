
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int assert (int) ;
 int func ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,void**) ;

int
main(int argc, char * argv[])
{
 pthread_t id[4];
 int i;
 void* result = (void*)-1;


 for (i = 0; i < 4; i++)
   {
     assert(pthread_create(&id[i], ((void*)0), func, (void *)(size_t)i) == 0);
   }

 for (i = 0; i < 4; i++)
   {
     assert(pthread_join(id[i], &result) == 0);
     assert((int)(size_t)result == i);
   }


 return 0;
}
