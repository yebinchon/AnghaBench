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
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ Vfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AtProcExit_Files ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int SizeVfdCache ; 
 int /*<<< orphan*/  VFD_CLOSED ; 
 TYPE_1__* VfdCache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(void)
{
	FUNC0(SizeVfdCache == 0);	/* call me only once */

	/* initialize cache header entry */
	VfdCache = (Vfd *) FUNC5(sizeof(Vfd));
	if (VfdCache == NULL)
		FUNC2(FATAL,
				(FUNC3(ERRCODE_OUT_OF_MEMORY),
				 FUNC4("out of memory")));

	FUNC1((char *) &(VfdCache[0]), 0, sizeof(Vfd));
	VfdCache->fd = VFD_CLOSED;

	SizeVfdCache = 1;

	/* register proc-exit hook to ensure temp files are dropped at exit */
	FUNC6(AtProcExit_Files, 0);
}