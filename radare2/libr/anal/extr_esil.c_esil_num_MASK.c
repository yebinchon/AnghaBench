#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(RAnalEsil *esil) {
	char *dup_me;
	ut64 dup;
	if (!esil) {
		return false;
	}
	if (!(dup_me = FUNC2 (esil))) {
		return false;
	}
	if (!FUNC1 (esil, dup_me, &dup)) {
		FUNC0 (dup_me);
		return false;
	}
	FUNC0 (dup_me);
	return FUNC3 (esil, dup);
}