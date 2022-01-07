
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* tp_dummy; size_t destTape; int* tp_fib; int tapeRange; int Level; } ;
typedef TYPE_1__ Tuplesortstate ;



__attribute__((used)) static void
selectnewtape(Tuplesortstate *state)
{
 int j;
 int a;


 if (state->tp_dummy[state->destTape] < state->tp_dummy[state->destTape + 1])
 {
  state->destTape++;
  return;
 }
 if (state->tp_dummy[state->destTape] != 0)
 {
  state->destTape = 0;
  return;
 }


 state->Level++;
 a = state->tp_fib[0];
 for (j = 0; j < state->tapeRange; j++)
 {
  state->tp_dummy[j] = a + state->tp_fib[j + 1] - state->tp_fib[j];
  state->tp_fib[j] = a + state->tp_fib[j + 1];
 }
 state->destTape = 0;
}
