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
struct TYPE_3__ {int bFinished; int /*<<< orphan*/  hThread; } ;
typedef  int /*<<< orphan*/  RDebug ;
typedef  TYPE_1__* PTHREAD_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC3(RDebug *dbg, int tid) {
	PTHREAD_ITEM th = FUNC2 (dbg, tid);
	if (!th) {
		return false;
	}
	if (!th->bFinished) {
		if (FUNC1 (th->hThread) != -1) {
			FUNC0 (th->hThread);
			return true;
		}
	}
	th->bFinished = true;
	return false;
}