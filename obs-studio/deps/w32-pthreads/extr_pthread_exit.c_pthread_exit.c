
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* exitStatus; } ;
typedef TYPE_1__ ptw32_thread_t ;


 int PTW32_EPS_EXIT ;
 int _endthread () ;
 int _endthreadex (unsigned int) ;
 int exit (int) ;
 scalar_t__ pthread_count ;
 scalar_t__ pthread_getspecific (int ) ;
 int ptw32_selfThreadKey ;
 int ptw32_throw (int ) ;

void
pthread_exit (void *value_ptr)
{
  ptw32_thread_t * sp;





  sp = (ptw32_thread_t *) pthread_getspecific (ptw32_selfThreadKey);






  if (((void*)0) == sp)
    {
      _endthreadex ((unsigned) (size_t) value_ptr);





    }

  sp->exitStatus = value_ptr;

  ptw32_throw (PTW32_EPS_EXIT);



}
