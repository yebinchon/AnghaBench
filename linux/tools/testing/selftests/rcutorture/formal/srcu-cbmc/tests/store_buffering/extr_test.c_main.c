
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 scalar_t__ __unbuffered_tpr_x ;
 scalar_t__ __unbuffered_tpr_y ;
 int abort () ;
 int assert (int) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_join (int ,int *) ;
 int thread_process_reader ;
 int thread_update ;

int main(int argc, char *argv[])
{
 pthread_t tu;
 pthread_t tpr;

 if (pthread_create(&tu, ((void*)0), thread_update, ((void*)0)))
  abort();
 if (pthread_create(&tpr, ((void*)0), thread_process_reader, ((void*)0)))
  abort();
 if (pthread_join(tu, ((void*)0)))
  abort();
 if (pthread_join(tpr, ((void*)0)))
  abort();
 assert(__unbuffered_tpr_y != 0 || __unbuffered_tpr_x != 0);





 return 0;
}
