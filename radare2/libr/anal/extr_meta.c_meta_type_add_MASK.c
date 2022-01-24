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
typedef  int ut32 ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  RAnal ;

/* Variables and functions */
 int /*<<< orphan*/  DB ; 
 int K ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char,...) ; 

__attribute__((used)) static int FUNC3(RAnal *a, char type, ut64 addr) {
	char key[32];
	ut32 count, last;
	FUNC2 (key, sizeof (key)-1, "meta.%c.count", type);
	count = (ut32)FUNC1 (DB, key, 1, 0);
	last = count/K;

	FUNC2 (key, sizeof (key)-1, "meta.%c.%d", type, last);
	FUNC0 (DB, key, addr, 0);
	return count;
}