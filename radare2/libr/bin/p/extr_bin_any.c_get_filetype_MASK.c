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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  RMagic ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  R2_SDB_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static char *FUNC6(RBuffer *b) {
	ut8 buf[4096] = { 0 };
	char *res = NULL;
	RMagic *ck = FUNC4 (0);
	if (!ck) {
		return NULL;
	}
	const char *tmp = NULL;
	// TODO: dir.magic not honored here
	FUNC3 (ck, R2_SDB_MAGIC);
	FUNC0 (b, 0, buf, sizeof (buf));
	tmp = FUNC1 (ck, buf, sizeof (buf));
	if (tmp) {
		res = FUNC5 (tmp);
	}
	FUNC2 (ck);
	return res;
}