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
struct TYPE_3__ {int /*<<< orphan*/  anal; } ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static bool FUNC2(RCore *core, RAnalFunction *fcn, const char *name) {
	FUNC0 (core && fcn && name, false);
	return FUNC1 (core->anal, fcn, name);
}