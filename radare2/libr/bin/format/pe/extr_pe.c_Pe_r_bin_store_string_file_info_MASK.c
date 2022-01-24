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
struct TYPE_3__ {int numOfChildren; int /*<<< orphan*/ * Children; } ;
typedef  TYPE_1__ StringFileInfo ;
typedef  int /*<<< orphan*/  Sdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

__attribute__((used)) static Sdb* FUNC4(StringFileInfo* stringFileInfo) {
	char key[30];
	int i = 0;
	Sdb* sdb = NULL;
	if (!stringFileInfo) {
		return NULL;
	}
	sdb = FUNC1 ();
	if (!sdb) {
		return NULL;
	}
	for (; i < stringFileInfo->numOfChildren; i++) {
		FUNC3 (key, 30, "stringtable%d", i);
		FUNC2 (sdb, key, FUNC0 (stringFileInfo->Children[i]));
	}
	return sdb;
}