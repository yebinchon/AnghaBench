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
struct RObject {int dummy; } ;
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
#define  MRB_TT_CLASS 129 
#define  MRB_TT_MODULE 128 
 struct RClass* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct RObject*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct RClass*
FUNC5(mrb_state *mrb, struct RClass *c)
{
  mrb_value ov;

  ov = FUNC3(mrb, (struct RObject*)c, FUNC1(mrb, "__outer__"));
  if (FUNC2(ov)) return NULL;
  switch (FUNC4(ov)) {
  case MRB_TT_CLASS:
  case MRB_TT_MODULE:
    return FUNC0(ov);
  default:
    break;
  }
  return NULL;
}