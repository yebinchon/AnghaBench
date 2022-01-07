
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rk_state ;


 int rk_ulong (int *) ;

long rk_long(rk_state *state) { return rk_ulong(state) >> 1; }
