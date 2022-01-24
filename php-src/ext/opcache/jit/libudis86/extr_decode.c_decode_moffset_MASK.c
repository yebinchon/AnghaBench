#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ud_operand {int /*<<< orphan*/  size; void* scale; void* index; void* base; int /*<<< orphan*/  type; } ;
struct ud {int /*<<< orphan*/  adr_mode; } ;

/* Variables and functions */
 void* UD_NONE ; 
 int /*<<< orphan*/  UD_OP_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct ud*,int /*<<< orphan*/ ,struct ud_operand*) ; 
 int /*<<< orphan*/  FUNC1 (struct ud*,unsigned int) ; 

__attribute__((used)) static void
FUNC2(struct ud *u, unsigned int size, struct ud_operand *opr)
{
  opr->type  = UD_OP_MEM;
  opr->base  = UD_NONE;
  opr->index = UD_NONE;
  opr->scale = UD_NONE;
  opr->size  = FUNC1(u, size);
  FUNC0(u, u->adr_mode, opr);
}