
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thread; int canWrite; int canRead; scalar_t__ inBuf; scalar_t__ outBuf; int * mtCoder; } ;
typedef TYPE_1__ CMtThread ;
typedef int CMtCoder ;


 int Event_Construct (int *) ;
 int LoopThread_Construct (int *) ;

void CMtThread_Construct(CMtThread *p, CMtCoder *mtCoder)
{
  p->mtCoder = mtCoder;
  p->outBuf = 0;
  p->inBuf = 0;
  Event_Construct(&p->canRead);
  Event_Construct(&p->canWrite);
  LoopThread_Construct(&p->thread);
}
