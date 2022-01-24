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
typedef  scalar_t__ zend_bool ;
typedef  int /*<<< orphan*/  MYSQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 unsigned int FUNC2 (char**,int /*<<< orphan*/ ,char*,char const* const) ; 

__attribute__((used)) static int FUNC3(MYSQL * conn, const char * const name, zend_bool release)
{
	int ret;
	char * query;
	unsigned int query_len = FUNC2(&query, 0, release? "RELEASE SAVEPOINT `%s`":"SAVEPOINT `%s`", name);
	ret = FUNC1(conn, query, query_len);
	FUNC0(query);
	return ret;
}