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
typedef  scalar_t__ zend_bool ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {scalar_t__ s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ smart_str ;
typedef  int /*<<< orphan*/  MYSQL ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 char* FUNC3 (char const* const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 size_t FUNC7 (char**,int /*<<< orphan*/ ,char*,char*,char*) ; 

__attribute__((used)) static int FUNC8(MYSQL * conn, zend_bool commit, const uint32_t mode, const char * const name)
{
	int ret;
	smart_str tmp_str = {0};
	FUNC4(conn, &tmp_str, mode);
	FUNC5(&tmp_str);

	{
		char *query;
		char *name_esc = FUNC3(name);
		size_t query_len;

		query_len = FUNC7(&query, 0,
				(commit? "COMMIT%s %s":"ROLLBACK%s %s"), name_esc? name_esc:"", tmp_str.s? FUNC0(tmp_str.s):"");
		FUNC6(&tmp_str);
		if (name_esc) {
			FUNC1(name_esc);
			name_esc = NULL;
		}

		ret = FUNC2(conn, query, query_len);
		FUNC1(query);
	}
	return ret;
}