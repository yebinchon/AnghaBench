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

/* Variables and functions */
 scalar_t__ IS_LONG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 long FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(zval* list, const char* id, zval* val)
{
	if (list && val) {
		if (id) {
			int id_len = FUNC2(id);
			if (!(id_len > 1 && id[0] == '0') && FUNC1((char *)id, id_len, NULL, NULL, 0) == IS_LONG) {
				long index = FUNC3(id, NULL, 0);
				FUNC4(FUNC0(list), index, val);
			} else {
				FUNC6(FUNC0(list), (char*)id, FUNC2(id), val);
			}
		} else {
			FUNC5(FUNC0(list), val);
		}
	}
}