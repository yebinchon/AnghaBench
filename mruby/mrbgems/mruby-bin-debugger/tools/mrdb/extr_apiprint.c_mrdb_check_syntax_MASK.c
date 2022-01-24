#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  lineno; void* capture_errors; void* no_exec; } ;
typedef  TYPE_1__ mrbc_context ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_9__ {int /*<<< orphan*/  prvline; scalar_t__ prvfile; } ;
typedef  TYPE_2__ mrb_debug_context ;

/* Variables and functions */
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,char const*) ; 

__attribute__((used)) static void
FUNC4(mrb_state *mrb, mrb_debug_context *dbg, const char *expr, size_t len)
{
  mrbc_context *c;

  c = FUNC2(mrb);
  c->no_exec = TRUE;
  c->capture_errors = TRUE;
  FUNC3(mrb, c, (const char*)dbg->prvfile);
  c->lineno = dbg->prvline;

  /* Load program */
  FUNC0(mrb, expr, len, c);

  FUNC1(mrb, c);
}