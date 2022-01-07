
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_IntDisable (int) ;
 int MAP_IntUnregister (int) ;

void osi_InterruptDeRegister(int iIntrNum)
{
 MAP_IntDisable(iIntrNum);
 MAP_IntUnregister(iIntrNum);
}
