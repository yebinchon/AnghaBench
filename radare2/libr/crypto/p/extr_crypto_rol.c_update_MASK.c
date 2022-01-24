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
typedef  int /*<<< orphan*/  RCrypto ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ flag ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  st ; 

__attribute__((used)) static bool FUNC5(RCrypto *cry, const ut8 *buf, int len) {
	if (flag) {
		FUNC1 ("Use ROR\n");
		return false;
	}
	ut8 *obuf = FUNC0 (1, len);
	if (!obuf) {
		return false;
	}
	FUNC4 (&st, buf, obuf, len);
	FUNC3 (cry, obuf, len);
	FUNC2 (obuf);
	return true;
}