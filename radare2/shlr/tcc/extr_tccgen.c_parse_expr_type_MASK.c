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
typedef  int /*<<< orphan*/  CType ;
typedef  int /*<<< orphan*/  AttributeDef ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_ABSTRACT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(CType *type) {
	int n;
	AttributeDef ad;

	FUNC2 ('(');
	if (FUNC1 (type, &ad)) {
		FUNC3 (type, &ad, &n, TYPE_ABSTRACT);
	} else {
		FUNC0 (type);
	}
	FUNC2 (')');
}