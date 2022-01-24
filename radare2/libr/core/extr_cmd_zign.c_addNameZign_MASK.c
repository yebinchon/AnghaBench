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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,char const*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(RCore *core, const char *name, const char *args0, int nargs) {
	const char *realname = FUNC1 (args0, 0);
	return FUNC0 (core->anal, name, realname);
}