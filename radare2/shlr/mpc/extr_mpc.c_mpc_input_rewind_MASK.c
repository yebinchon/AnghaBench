#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pos; } ;
struct TYPE_6__ {int backtrack; int marks_num; scalar_t__ type; TYPE_1__ state; int /*<<< orphan*/  file; int /*<<< orphan*/ * lasts; int /*<<< orphan*/  last; TYPE_1__* marks; } ;
typedef  TYPE_2__ mpc_input_t ;

/* Variables and functions */
 scalar_t__ MPC_INPUT_FILE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(mpc_input_t *i) {
  
  if (i->backtrack < 1) { return; }
  
  i->state = i->marks[i->marks_num-1];
  i->last  = i->lasts[i->marks_num-1];
  
  if (i->type == MPC_INPUT_FILE) {
    FUNC0(i->file, i->state.pos, SEEK_SET);
  }
  
  FUNC1(i);
}