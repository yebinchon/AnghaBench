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
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_3__ {int /*<<< orphan*/  rcmd; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ut8*FUNC2(RCore *core, const char *arg) {
	if (*arg == '$') {
		return (ut8*) FUNC0 (core->rcmd, arg, 1);
	}
	return (ut8*)FUNC1 (arg, NULL);
}