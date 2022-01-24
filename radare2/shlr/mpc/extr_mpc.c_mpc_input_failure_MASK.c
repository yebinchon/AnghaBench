#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int type; int /*<<< orphan*/  file; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ mpc_input_t ;

/* Variables and functions */
#define  MPC_INPUT_FILE 130 
#define  MPC_INPUT_PIPE 129 
#define  MPC_INPUT_STRING 128 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(mpc_input_t *i, char c) {

  switch (i->type) {
    case MPC_INPUT_STRING: { break; }
    case MPC_INPUT_FILE: FUNC0(i->file, -1, SEEK_CUR); { break; }
    case MPC_INPUT_PIPE: {
      
      if (!i->buffer) { FUNC2(c, i->file); break; }
      
      if (i->buffer && FUNC1(i)) {
        break;
      } else {
        FUNC2(c, i->file); 
      }
    }
    default: { break; }
  }
  return 0;
}