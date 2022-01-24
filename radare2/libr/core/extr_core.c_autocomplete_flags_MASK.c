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
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  RLineCompletion ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  add_argv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(RCore *core, RLineCompletion *completion, const char* str) {
	FUNC1 (str);
	int n = FUNC2 (str);
	FUNC0 (core->flags, str, n, add_argv, completion);
}