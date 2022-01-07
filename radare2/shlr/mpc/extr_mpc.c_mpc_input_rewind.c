
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pos; } ;
struct TYPE_6__ {int backtrack; int marks_num; scalar_t__ type; TYPE_1__ state; int file; int * lasts; int last; TYPE_1__* marks; } ;
typedef TYPE_2__ mpc_input_t ;


 scalar_t__ MPC_INPUT_FILE ;
 int SEEK_SET ;
 int fseek (int ,int ,int ) ;
 int mpc_input_unmark (TYPE_2__*) ;

__attribute__((used)) static void mpc_input_rewind(mpc_input_t *i) {

  if (i->backtrack < 1) { return; }

  i->state = i->marks[i->marks_num-1];
  i->last = i->lasts[i->marks_num-1];

  if (i->type == MPC_INPUT_FILE) {
    fseek(i->file, i->state.pos, SEEK_SET);
  }

  mpc_input_unmark(i);
}
