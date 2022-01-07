
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cs; } ;
struct TYPE_5__ {TYPE_1__ mtProgress; int cs; int * threads; } ;
typedef TYPE_2__ CMtCoder ;


 int CMtThread_Destruct (int *) ;
 int CriticalSection_Delete (int *) ;
 unsigned int NUM_MT_CODER_THREADS_MAX ;

void MtCoder_Destruct(CMtCoder* p)
{
  unsigned i;
  for (i = 0; i < NUM_MT_CODER_THREADS_MAX; i++)
    CMtThread_Destruct(&p->threads[i]);
  CriticalSection_Delete(&p->cs);
  CriticalSection_Delete(&p->mtProgress.cs);
}
