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
struct mrbc_args {scalar_t__ idx; scalar_t__ argc; char** argv; char* prog; } ;
struct mrb_parser_state {int /*<<< orphan*/ * f; TYPE_1__* cxt; } ;
struct TYPE_2__ {scalar_t__ partial_data; } ;
typedef  TYPE_1__ mrbc_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct mrb_parser_state*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC4(struct mrb_parser_state *p)
{
  mrbc_context *c = p->cxt;
  struct mrbc_args *args = (struct mrbc_args *)c->partial_data;
  const char *fn;

  if (p->f) FUNC0(p->f);
  if (args->idx >= args->argc) {
    p->f = NULL;
    return -1;
  }
  fn = args->argv[args->idx++];
  p->f = FUNC1(fn, "r");
  if (p->f == NULL) {
    FUNC2(stderr, "%s: cannot open program file. (%s)\n", args->prog, fn);
    return -1;
  }
  FUNC3(p, fn);
  return 0;
}