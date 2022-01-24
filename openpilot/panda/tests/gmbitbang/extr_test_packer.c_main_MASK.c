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
struct TYPE_3__ {int RIR; int RDTR; int RDLR; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ CAN_FIFOMailBox_TypeDef ;

/* Variables and functions */
 int FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int FUNC2() {
  char out[300];
  CAN_FIFOMailBox_TypeDef to_bang = {0};
  to_bang.RIR = 20 << 21;
  to_bang.RDTR = 1;
  to_bang.RDLR = 1;

  int len = FUNC0(out, &to_bang);
  FUNC1("T:");
  for (int i = 0; i < len; i++) {
    FUNC1("%d", out[i]);
  }
  FUNC1("\n");
  FUNC1("R:0000010010100000100010000010011110111010100111111111111111");
  FUNC1("\n");
  return 0;
}