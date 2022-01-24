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
struct RClass {scalar_t__ tt; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 scalar_t__ MRB_TT_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct RClass*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct RClass*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static mrb_value
FUNC6(mrb_state *mrb, struct RClass* c)
{
  mrb_value path = FUNC0(mrb, c);
  if (FUNC1(path)) {
    path = c->tt == MRB_TT_MODULE ? FUNC5(mrb, "#<Module:") :
                                    FUNC5(mrb, "#<Class:");
    FUNC4(mrb, path, FUNC2(mrb, c));
    FUNC3(mrb, path, ">");
  }
  return path;
}