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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  R_FLAGS_FS_SIGNS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *data, const char *input) {
	if (!data || !input) {
		return false;
	}
	RCore *core = (RCore *) data;
	FUNC2 (core->flags, R_FLAGS_FS_SIGNS);
	FUNC0 (core->flags, *input, input[0] ? input + 1: "");
	FUNC1 (core->flags);
	return true;
}