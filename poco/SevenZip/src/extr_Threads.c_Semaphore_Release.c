
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef int LONG ;
typedef int CSemaphore ;


 int BOOLToWRes (int ) ;
 int ReleaseSemaphore (int ,int ,int *) ;

__attribute__((used)) static WRes Semaphore_Release(CSemaphore *p, LONG releaseCount, LONG *previousCount)
  { return BOOLToWRes(ReleaseSemaphore(*p, releaseCount, previousCount)); }
