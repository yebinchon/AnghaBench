#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_5__ {int /*<<< orphan*/  jump_target_set; } ;
typedef  TYPE_1__ RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC5(RAnalEsil *esil) {
	bool ret = false;
	ut64 s;
	char *src = FUNC4 (esil);
	if (src && FUNC3 (esil, src, &s)) {
		esil->jump_target_set = s;
		ret = true;
	} else {
		FUNC1 (src);
		FUNC0 ("esil_set_jump_target_set: empty stack");
	}
	FUNC2 (src);
	return ret;
}