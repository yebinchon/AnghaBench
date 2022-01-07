
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CState ;


 int finishCon (int *) ;

__attribute__((used)) static void
disconnect_all(CState *state, int length)
{
 int i;

 for (i = 0; i < length; i++)
  finishCon(&state[i]);
}
