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

/* Variables and functions */
 unsigned int SERVER_QUERY_NO_GOOD_INDEX_USED ; 
 unsigned int SERVER_QUERY_NO_INDEX_USED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2(const char *query, unsigned int status) {
	char index[15];

	if (status & SERVER_QUERY_NO_GOOD_INDEX_USED) {
		FUNC1(index, "Bad index");
	} else if (status & SERVER_QUERY_NO_INDEX_USED) {
		FUNC1(index, "No index");
	} else {
		return;
	}
	FUNC0("00000", 0, "%s used in query/prepared statement %s", index, query);
}