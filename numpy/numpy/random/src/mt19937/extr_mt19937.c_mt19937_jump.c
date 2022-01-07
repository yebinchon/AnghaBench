
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mt19937_state ;


 int mt19937_jump_state (int *,int ) ;
 int poly ;

void mt19937_jump(mt19937_state *state) { mt19937_jump_state(state, poly); }
