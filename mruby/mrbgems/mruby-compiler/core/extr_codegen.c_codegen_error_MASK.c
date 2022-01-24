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
struct TYPE_3__ {int lineno; int /*<<< orphan*/  jmp; scalar_t__ filename_sym; int /*<<< orphan*/  mrb; int /*<<< orphan*/  mpool; int /*<<< orphan*/  lines; int /*<<< orphan*/  iseq; struct TYPE_3__* prev; } ;
typedef  TYPE_1__ codegen_scope ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC5(codegen_scope *s, const char *message)
{
  if (!s) return;
  while (s->prev) {
    codegen_scope *tmp = s->prev;
    FUNC2(s->mrb, s->iseq);
    FUNC2(s->mrb, s->lines);
    FUNC3(s->mpool);
    s = tmp;
  }
#ifndef MRB_DISABLE_STDIO
  if (s->filename_sym && s->lineno) {
    const char *filename = FUNC4(s->mrb, s->filename_sym, NULL);
    FUNC1(stderr, "codegen error:%s:%d: %s\n", filename, s->lineno, message);
  }
  else {
    FUNC1(stderr, "codegen error: %s\n", message);
  }
#endif
  FUNC0(&s->jmp);
}