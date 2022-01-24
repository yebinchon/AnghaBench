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
struct TYPE_5__ {scalar_t__ s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ smart_str ;
typedef  int /*<<< orphan*/  MYSQL ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ FALSE ; 
 unsigned int const TRANS_START_READ_ONLY ; 
 unsigned int const TRANS_START_READ_WRITE ; 
 unsigned int const TRANS_START_WITH_CONSISTENT_SNAPSHOT ; 
 scalar_t__ TRUE ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 char* FUNC4 (char const* const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 unsigned int FUNC9 (char**,int /*<<< orphan*/ ,char*,char*,char*) ; 

__attribute__((used)) static int FUNC10(MYSQL * conn, const unsigned int mode, const char * const name)
{
	int ret;
	zend_bool err = FALSE;
	smart_str tmp_str = {0};
	if (mode & TRANS_START_WITH_CONSISTENT_SNAPSHOT) {
		if (tmp_str.s) {
			FUNC7(&tmp_str, ", ", sizeof(", ") - 1);
		}
		FUNC7(&tmp_str, "WITH CONSISTENT SNAPSHOT", sizeof("WITH CONSISTENT SNAPSHOT") - 1);
	}
	if (mode & (TRANS_START_READ_WRITE | TRANS_START_READ_ONLY)) {
		if (FUNC2(conn) < 50605L) {
			FUNC5(NULL, E_WARNING, "This server version doesn't support 'READ WRITE' and 'READ ONLY'. Minimum 5.6.5 is required");
			err = TRUE;
		} else if (mode & TRANS_START_READ_WRITE) {
			if (tmp_str.s) {
				FUNC7(&tmp_str, ", ", sizeof(", ") - 1);
			}
			FUNC7(&tmp_str, "READ WRITE", sizeof("READ WRITE") - 1);
		} else if (mode & TRANS_START_READ_ONLY) {
			if (tmp_str.s) {
				FUNC7(&tmp_str, ", ", sizeof(", ") - 1);
			}
			FUNC7(&tmp_str, "READ ONLY", sizeof("READ ONLY") - 1);
		}
	}
	FUNC6(&tmp_str);

	if (err == FALSE){
		char * name_esc = FUNC4(name);
		char * query;
		unsigned int query_len = FUNC9(&query, 0, "START TRANSACTION%s %s",
										  name_esc? name_esc:"", tmp_str.s? FUNC0(tmp_str.s):"");

		FUNC8(&tmp_str);
		if (name_esc) {
			FUNC1(name_esc);
		}

		ret = FUNC3(conn, query, query_len);
		FUNC1(query);
	}
	return ret;
}