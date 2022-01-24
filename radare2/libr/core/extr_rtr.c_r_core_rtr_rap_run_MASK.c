#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* context; } ;
struct TYPE_7__ {int /*<<< orphan*/  io; } ;
struct TYPE_6__ {int breaked; } ;
typedef  int /*<<< orphan*/  RIODesc ;
typedef  TYPE_2__ RCore ;

/* Variables and functions */
 int R_PERM_RW ; 
 TYPE_5__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 char* FUNC5 (char*,char const*) ; 

__attribute__((used)) static bool FUNC6(RCore *core, const char *input) {
	char *file = FUNC5 ("rap://%s", input);
	int flags = R_PERM_RW;
	RIODesc *fd = FUNC4 (core->io, file, flags, 0644);
	if (fd) {
		if (FUNC3 (core->io)) {
			if (!FUNC1 (core, fd)) {
				FUNC0 ()->context->breaked = true;
			}
			FUNC2 (fd);
			// avoid double free, we are not the owners of this fd so we can't destroy it
			//r_io_desc_free (fd);
		}
	} else {
		FUNC0 ()->context->breaked = true;
	}
	return !FUNC0 ()->context->breaked;
	// r_core_cmdf (core, "o rap://%s", input);
}