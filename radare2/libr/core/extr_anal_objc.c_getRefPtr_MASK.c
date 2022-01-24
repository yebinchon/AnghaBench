#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  long long ut64 ;
struct TYPE_4__ {int /*<<< orphan*/  _const; int /*<<< orphan*/  _msgrefs; int /*<<< orphan*/  _selrefs; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ RCoreObjc ;

/* Variables and functions */
 char* FUNC0 (long long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,long long) ; 
 long long FUNC2 (TYPE_1__*,long long) ; 
 long long FUNC3 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ut64 FUNC4(RCoreObjc *objc, ut64 classMethodsVA, bool *res) {
	ut64 namePtr = FUNC2 (objc, classMethodsVA);
	int i, cnt = 0;
	ut64 res_at = 0LL;
	const char *k = FUNC0 (namePtr);

	*res = false;
	for (i = 0; ; i++) {
		ut64 at = FUNC3 (objc->db, k, i, NULL);
		if (!at) {
			break;
		}
		if (FUNC1 (objc->_selrefs, at)) {
			*res = false;
			res_at = at;
		} else if (FUNC1 (objc->_msgrefs, at)) {
			*res = true;
			res_at = at;
		} else if (FUNC1 (objc->_const, at)) {
			cnt++;
		}
	}
	if (cnt > 1) {
		return 0LL;
	}
	return res_at;
}