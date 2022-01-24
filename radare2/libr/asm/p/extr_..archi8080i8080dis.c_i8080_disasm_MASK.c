#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int const mask; int const shift; scalar_t__ type; } ;
struct opcode_t {int size; int const cmd; TYPE_1__ arg2; TYPE_1__ arg1; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int const,TYPE_1__*,int const) ; 
 struct opcode_t* opcodes ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(unsigned char const* const code, char* text, int text_sz) {
  int const cmd = code[0];
  int const p = code[1] | (code[2] << 8);

  struct opcode_t const *op;
  for (op = &opcodes[0]; op->size; ++op) {
    int const grp = cmd &
      ~((op->arg1.mask << op->arg1.shift) | 
       (op->arg2.mask << op->arg2.shift));
    int const branch = (grp == 0xc0 || grp == 0xc2 || grp == 0xc4);
    if (grp == op->cmd) {
      FUNC3(text, op->name);
      if (!branch) FUNC2(text, " ");
      FUNC0(text + FUNC4(text), cmd, &op->arg1, p);
      if (op->arg2.type != 0) FUNC2(text, (branch ? " " : ", "));
      FUNC0(text + FUNC4(text), cmd, &op->arg2, p);
      return op->size;
    }
  }
  FUNC1(text, text_sz, "db 0x%02x", cmd);
  return 1;
}