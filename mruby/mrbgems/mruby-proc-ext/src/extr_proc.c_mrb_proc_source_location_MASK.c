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
 scalar_t__ FUNC0 (struct RProc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct RProc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static mrb_value
FUNC8(mrb_state *mrb, mrb_value self)
{
  struct RProc *p = FUNC6(self);

  if (FUNC0(p)) {
    return FUNC5();
  }
  else {
    mrb_irep *irep = p->body.irep;
    int32_t line;
    const char *filename;

    filename = FUNC2(mrb, irep, 0);
    line = FUNC3(mrb, irep, 0);

    return (!filename && line == -1)? FUNC5()
        : FUNC1(mrb, FUNC7(mrb, filename), FUNC4(line));
  }
}