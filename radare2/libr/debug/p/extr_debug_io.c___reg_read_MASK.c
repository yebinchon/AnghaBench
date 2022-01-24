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
typedef  char ut8 ;
struct TYPE_4__ {char* (* system ) (int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/  io; } ;
struct TYPE_5__ {TYPE_1__ iob; } ;
typedef  TYPE_2__ RDebug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC12(RDebug *dbg, int type, ut8 *buf, int size) {
	char *dr8 = dbg->iob.system (dbg->iob.io, "dr8");
	if (!dr8) {
		const char *fb = FUNC5 ();
		if (!fb || !*fb) {
			FUNC2 ("debug.io: Failed to get dr8 from io\n");
			return -1;
		}
		dr8 = FUNC9 (fb);
		FUNC6 ();
	}
	ut8 *bregs = FUNC1 (1, FUNC10 (dr8));
	if (!bregs) {
		FUNC3 (dr8);
		return -1;
	}
	FUNC8 ((char *)bregs);
	int sz = FUNC7 (dr8, bregs);
	if (sz > 0) {
		FUNC4 (buf, bregs, FUNC0 (size, sz));
		FUNC3 (bregs);
		FUNC3 (dr8);
		return size;
	} else {
		// eprintf ("SIZE %d (%s)\n", sz, regs);
	}
	FUNC3 (bregs);
	FUNC3 (dr8);
	return -1;
}