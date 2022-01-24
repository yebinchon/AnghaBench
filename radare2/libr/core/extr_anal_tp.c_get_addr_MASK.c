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
typedef  int /*<<< orphan*/  Sdb ;

/* Variables and functions */
 int /*<<< orphan*/  UT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int,char const*) ; 

__attribute__((used)) static ut64 FUNC3(Sdb *trace, const char *regname, int idx) {
	if (!regname || !*regname) {
		return UT64_MAX;
	}
	const char *query = FUNC2 ("%d.reg.read.%s", idx, regname);
	return FUNC0 (NULL, FUNC1 (trace, query, 0));
}