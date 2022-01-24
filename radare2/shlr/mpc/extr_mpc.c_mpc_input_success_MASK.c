#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  row; scalar_t__ col; int /*<<< orphan*/  pos; } ;
struct TYPE_7__ {scalar_t__ type; char* buffer; char last; TYPE_1__ state; } ;
typedef  TYPE_2__ mpc_input_t ;

/* Variables and functions */
 scalar_t__ MPC_INPUT_PIPE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 char* FUNC1 (TYPE_2__*,int) ; 
 char* FUNC2 (char*,int) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(mpc_input_t *i, char c, char **o) {
  
  if (i->type == MPC_INPUT_PIPE
  &&  i->buffer && !FUNC0(i)) {
    i->buffer = FUNC2(i->buffer, FUNC3(i->buffer) + 2);
    i->buffer[FUNC3(i->buffer) + 1] = '\0';
    i->buffer[FUNC3(i->buffer) + 0] = c;
  }
  
  i->last = c;
  i->state.pos++;
  i->state.col++;
  
  if (c == '\n') {
    i->state.col = 0;
    i->state.row++;
  }
  
  if (o) {
    (*o) = FUNC1(i, 2);
    (*o)[0] = c;
    (*o)[1] = '\0';
  }
  
  return 1;
}