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
struct TYPE_2__ {int /*<<< orphan*/ * irep; } ;
struct RProc {TYPE_1__ body; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_irep ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RProc*) ; 
 scalar_t__ FUNC1 (struct RProc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct RProc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static mrb_value
FUNC13(mrb_state *mrb, mrb_value self)
{
  struct RProc *p = FUNC6(self);
  mrb_value str = FUNC12(mrb, "#<Proc:");
  FUNC10(mrb, str, FUNC7(mrb, FUNC2(self)));

  if (!FUNC0(p)) {
    mrb_irep *irep = p->body.irep;
    const char *filename;
    int32_t line;
    FUNC9(mrb, str, "@");

    filename = FUNC3(mrb, irep, 0);
    FUNC8(mrb, str, filename ? filename : "-");
    FUNC9(mrb, str, ":");

    line = FUNC4(mrb, irep, 0);
    if (line != -1) {
      FUNC11(mrb, str, FUNC5(line));
    }
    else {
      FUNC9(mrb, str, "-");
    }
  }

  if (FUNC1(p)) {
    FUNC9(mrb, str, " (lambda)");
  }

  FUNC9(mrb, str, ">");
  return str;
}