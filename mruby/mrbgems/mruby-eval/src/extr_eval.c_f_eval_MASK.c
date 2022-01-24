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
struct RProc {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RProc*) ; 
 struct RProc* FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct RProc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char**,int*,int /*<<< orphan*/ *,char**,int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static mrb_value
FUNC6(mrb_state *mrb, mrb_value self)
{
  char *s;
  mrb_int len;
  mrb_value binding = FUNC5();
  char *file = NULL;
  mrb_int line = 1;
  struct RProc *proc;

  FUNC4(mrb, "s|ozi", &s, &len, &binding, &file, &line);

  proc = FUNC1(mrb, s, len, binding, file, line);
  FUNC3(!FUNC0(proc));
  return FUNC2(mrb, self, proc);
}