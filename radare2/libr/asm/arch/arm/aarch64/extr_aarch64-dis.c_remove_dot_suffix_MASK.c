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
struct TYPE_5__ {TYPE_1__* opcode; scalar_t__ cond; } ;
typedef  TYPE_2__ aarch64_inst ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC3 (char *name, const aarch64_inst *inst)
{
  char *ptr;
  size_t len;

  ptr = FUNC1 (inst->opcode->name, '.');
  FUNC0 (ptr && inst->cond);
  len = ptr - inst->opcode->name;
  FUNC0 (len < 8);
  FUNC2 (name, inst->opcode->name, len);
  name[len] = '\0';
}