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
 int FUNC0 (int /*<<< orphan*/ ,char const*,int,char const*,int) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static bool FUNC2(RCore *core, const char *name, int type, const char *args0, int nargs) {
	if (!args0) {
		return false;
	}
	int len = FUNC1 (args0);
	if (!len) {
		return false;
	}
	return FUNC0 (core->anal, name, type, args0, len);
}