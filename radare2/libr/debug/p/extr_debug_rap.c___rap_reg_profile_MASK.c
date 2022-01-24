#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  io; } ;
struct TYPE_5__ {TYPE_1__ iob; } ;
typedef  TYPE_2__ RDebug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static char *FUNC8(RDebug *dbg) {
	char *out, *tf = FUNC6 ("rap.XXXXXX");
	int fd = FUNC3 (tf, 1, 0);
	FUNC7 (dbg->iob.io, "drp");
	FUNC1 ();
	FUNC2 (fd);
	out = FUNC5 (tf, NULL);
	FUNC4 (tf);
	FUNC0 (tf);
	return out;
}