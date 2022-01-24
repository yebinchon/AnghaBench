#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* f; } ;
struct TYPE_4__ {int /*<<< orphan*/ * code; } ;
typedef  int /*<<< orphan*/  Instruction ;
typedef  TYPE_2__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Instruction *FUNC2 (FuncState *fs, int pc) {
  Instruction *pi = &fs->f->code[pc];
  if (pc >= 1 && FUNC1(FUNC0(*(pi-1))))
    return pi-1;
  else
    return pi;
}