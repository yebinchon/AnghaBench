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
 scalar_t__ flag ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (char const*,int,int*) ; 
 char* FUNC3 (int /*<<< orphan*/  const*,int,int*) ; 

__attribute__((used)) static bool FUNC4(RCrypto *cry, const ut8 *buf, int len) {
	char *obuf;
	int olen;
	if (flag) {
		obuf = FUNC2 ((const char *)buf, len, &olen);
	} else {
		obuf = FUNC3 (buf, len, &olen);
	}
	FUNC1 (cry, (ut8*)obuf, olen);
	FUNC0 (obuf);
	return true;
}