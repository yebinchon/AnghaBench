
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpc_state_t ;
struct TYPE_3__ {int backtrack; int marks_num; int marks_slots; scalar_t__ type; int * buffer; void* lasts; void* marks; } ;
typedef TYPE_1__ mpc_input_t ;


 int MPC_INPUT_MARKS_MIN ;
 scalar_t__ MPC_INPUT_PIPE ;
 int free (int *) ;
 void* realloc (void*,int) ;

__attribute__((used)) static void mpc_input_unmark(mpc_input_t *i) {

  if (i->backtrack < 1) { return; }

  i->marks_num--;

  if (i->marks_slots > i->marks_num + i->marks_num / 2
  && i->marks_slots > MPC_INPUT_MARKS_MIN) {
    i->marks_slots =
      i->marks_num > MPC_INPUT_MARKS_MIN ?
      i->marks_num : MPC_INPUT_MARKS_MIN;
    i->marks = realloc(i->marks, sizeof(mpc_state_t) * i->marks_slots);
    i->lasts = realloc(i->lasts, sizeof(char) * i->marks_slots);
  }

  if (i->type == MPC_INPUT_PIPE && i->marks_num == 0) {
    free(i->buffer);
    i->buffer = ((void*)0);
  }

}
