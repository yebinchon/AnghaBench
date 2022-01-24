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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(HashTable *var_table)
{
	if (FUNC3(var_table, "HTTP_PROXY", sizeof("HTTP_PROXY")-1)) {
		char *local_proxy = FUNC1("HTTP_PROXY");

		if (!local_proxy) {
			FUNC2(var_table, "HTTP_PROXY", sizeof("HTTP_PROXY")-1);
		} else {
			zval local_zval;
			FUNC0(&local_zval, local_proxy);
			FUNC4(var_table, "HTTP_PROXY", sizeof("HTTP_PROXY")-1, &local_zval);
		}
	}
}