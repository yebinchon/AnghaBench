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
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_ARRAY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct RClass*) ; 
 struct RClass* FUNC6 (int /*<<< orphan*/ *,struct RClass*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC11 (int /*<<< orphan*/ *,struct RClass*,int /*<<< orphan*/ ,struct RClass*) ; 
 int /*<<< orphan*/  mrb_instance_new ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct RClass*) ; 
 int /*<<< orphan*/  mrb_struct_s_members_m ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC20(mrb_state *mrb, mrb_value name, mrb_value members, struct RClass *klass)
{
  mrb_value nstr;
  mrb_sym id;
  struct RClass *c;

  if (FUNC15(name)) {
    c = FUNC6(mrb, klass);
  }
  else {
    /* old style: should we warn? */
    FUNC18(mrb, name);
    id = FUNC16(mrb, name);
    if (!FUNC8(mrb, FUNC4(name), FUNC3(name))) {
      FUNC14(mrb, id, "identifier %v needs to be constant", name);
    }
    if (FUNC7(mrb, FUNC17(klass), id)) {
      FUNC19(mrb, "redefining constant Struct::%v", name);
      FUNC9(mrb, FUNC17(klass), id);
    }
    c = FUNC11(mrb, klass, FUNC4(name), klass);
  }
  FUNC2(c, MRB_TT_ARRAY);
  nstr = FUNC17(c);
  FUNC13(mrb, nstr, FUNC12(mrb, "__members__"), members);

  FUNC10(mrb, c, "new", mrb_instance_new, FUNC0());
  FUNC10(mrb, c, "[]", mrb_instance_new, FUNC0());
  FUNC10(mrb, c, "members", mrb_struct_s_members_m, FUNC1());
  /* RSTRUCT(nstr)->basic.c->super = c->c; */
  FUNC5(mrb, members, c);
  return nstr;
}