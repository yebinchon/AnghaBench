
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpc_state_t ;
struct TYPE_3__ {int backtrack; int marks_num; int marks_slots; scalar_t__ type; int buffer; int last; int * lasts; int state; int * marks; } ;
typedef TYPE_1__ mpc_input_t ;


 scalar_t__ MPC_INPUT_PIPE ;
 int calloc (int,int) ;
 void* realloc (int *,int) ;

__attribute__((used)) static void mpc_input_mark(mpc_input_t *i) {

  if (i->backtrack < 1) { return; }

  i->marks_num++;

  if (i->marks_num > i->marks_slots) {
    i->marks_slots = i->marks_num + i->marks_num / 2;
    i->marks = realloc(i->marks, sizeof(mpc_state_t) * i->marks_slots);
    i->lasts = realloc(i->lasts, sizeof(char) * i->marks_slots);
  }

  i->marks[i->marks_num-1] = i->state;
  i->lasts[i->marks_num-1] = i->last;

  if (i->type == MPC_INPUT_PIPE && i->marks_num == 1) {
    i->buffer = calloc(1, 1);
  }

}
