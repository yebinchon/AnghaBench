#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mpc_state_t ;
struct TYPE_3__ {int backtrack; int marks_slots; char last; int /*<<< orphan*/  mem_full; scalar_t__ mem_index; void* lasts; void* marks; scalar_t__ marks_num; scalar_t__ suppress; int /*<<< orphan*/ * file; int /*<<< orphan*/ * buffer; void* string; int /*<<< orphan*/  state; int /*<<< orphan*/  type; void* filename; } ;
typedef  TYPE_1__ mpc_input_t ;

/* Variables and functions */
 int MPC_INPUT_MARKS_MIN ; 
 int MPC_INPUT_MEM_NUM ; 
 int /*<<< orphan*/  MPC_INPUT_STRING ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static mpc_input_t *FUNC5(const char *filename, const char *string) {

  mpc_input_t *i = FUNC0(sizeof(mpc_input_t));
  
  i->filename = FUNC0(FUNC4(filename) + 1);
  FUNC3(i->filename, filename);
  i->type = MPC_INPUT_STRING;
  
  i->state = FUNC2();
  
  i->string = FUNC0(FUNC4(string) + 1);
  FUNC3(i->string, string);
  i->buffer = NULL;
  i->file = NULL;
  
  i->suppress = 0;
  i->backtrack = 1;
  i->marks_num = 0;
  i->marks_slots = MPC_INPUT_MARKS_MIN;
  i->marks = FUNC0(sizeof(mpc_state_t) * i->marks_slots);
  i->lasts = FUNC0(sizeof(char) * i->marks_slots);
  i->last = '\0';
  
  i->mem_index = 0;
  FUNC1(i->mem_full, 0, sizeof(char) * MPC_INPUT_MEM_NUM);
  
  return i;
}