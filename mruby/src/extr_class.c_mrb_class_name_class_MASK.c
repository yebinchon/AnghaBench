#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct RObject {int dummy; } ;
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
struct TYPE_10__ {struct RClass* object_class; } ;
typedef  TYPE_1__ mrb_state ;
typedef  int /*<<< orphan*/  mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct RClass*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,struct RObject*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct RObject*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct RClass*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(mrb_state *mrb, struct RClass *outer, struct RClass *c, mrb_sym id)
{
  mrb_value name;
  mrb_sym nsym = FUNC1(mrb, "__classname__");

  if (FUNC3(mrb, (struct RObject*)c, nsym)) return;
  if (outer == NULL || outer == mrb->object_class) {
    name = FUNC9(id);
  }
  else {
    name = FUNC0(mrb, outer);
    if (FUNC2(name)) {      /* unnamed outer class */
      if (outer != mrb->object_class && outer != c) {
        FUNC4(mrb, (struct RObject*)c, FUNC1(mrb, "__outer__"),
                             FUNC5(outer));
      }
      return;
    }
    else {
      mrb_int len;
      const char *n = FUNC8(mrb, id, &len);

      FUNC7(mrb, name, "::");
      FUNC6(mrb, name, n, len);
    }
  }
  FUNC4(mrb, (struct RObject*)c, nsym, name);
}