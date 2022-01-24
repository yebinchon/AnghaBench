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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_4__ {scalar_t__ rlen; scalar_t__ nregs; scalar_t__ nlocals; } ;
typedef  TYPE_1__ mrb_irep ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ptrdiff_t
FUNC3(mrb_state *mrb, mrb_irep *irep, uint8_t *buf)
{
  uint8_t *cur = buf;

  cur += FUNC2((uint32_t)FUNC0(mrb, irep), cur);  /* record size */
  cur += FUNC1((uint16_t)irep->nlocals, cur);  /* number of local variable */
  cur += FUNC1((uint16_t)irep->nregs, cur);  /* number of register variable */
  cur += FUNC1((uint16_t)irep->rlen, cur);  /* number of child irep */

  return cur - buf;
}