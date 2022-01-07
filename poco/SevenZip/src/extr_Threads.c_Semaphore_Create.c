
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef scalar_t__ UInt32 ;
typedef int LONG ;
typedef int CSemaphore ;


 int CreateSemaphore (int *,int ,int ,int *) ;
 int HandleToWRes (int ) ;

WRes Semaphore_Create(CSemaphore *p, UInt32 initCount, UInt32 maxCount)
{
  *p = CreateSemaphore(((void*)0), (LONG)initCount, (LONG)maxCount, ((void*)0));
  return HandleToWRes(*p);
}
