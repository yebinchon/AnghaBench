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
struct TYPE_3__ {unsigned int numOfChildren; int /*<<< orphan*/ * Children; } ;
typedef  TYPE_1__ VarFileInfo ;
typedef  int /*<<< orphan*/  Sdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static Sdb* FUNC4(VarFileInfo* varFileInfo) {
	char key[20];
	unsigned int i = 0;
	if (!varFileInfo) {
		return NULL;
	}
	Sdb* sdb = FUNC1 ();
	if (!sdb) {
		return NULL;
	}
	for (; i < varFileInfo->numOfChildren; i++) {
		FUNC3 (key, 20, "var%d", i);
		FUNC2 (sdb, key, FUNC0 (varFileInfo->Children[i]));
	}
	return sdb;
}