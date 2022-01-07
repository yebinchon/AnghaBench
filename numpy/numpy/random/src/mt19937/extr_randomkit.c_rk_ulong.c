
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rk_state ;


 int rk_random (int *) ;

unsigned long rk_ulong(rk_state *state) {

  return rk_random(state);



}
