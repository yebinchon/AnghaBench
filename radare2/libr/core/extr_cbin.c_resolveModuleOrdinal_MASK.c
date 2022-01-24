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
typedef  int /*<<< orphan*/  Sdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC2(Sdb *sdb, const char *module, int ordinal) {
	Sdb *db = sdb;
	char *foo = FUNC1 (db, FUNC0 ("%d", ordinal), 0);
	return (foo && *foo) ? foo : NULL;
}