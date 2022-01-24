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
typedef  char ut8 ;
struct TYPE_4__ {int dir; } ;
typedef  TYPE_1__ RCrypto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static bool FUNC5(RCrypto *cry, const ut8 *buf, int len) {
	int olen = 0;
	ut8 *obuf = NULL;
	if (cry->dir == 0) {
		olen = ((len + 2) / 3 ) * 4;
		obuf = FUNC1 (olen + 1);
		if (!obuf) {
			return false;
		}
		FUNC3 ((char *)obuf, (const ut8 *)buf, len);
	} else if (cry->dir == 1) {
		olen = 4 + ((len / 4) * 3);
		if (len > 0) {
			olen -= (buf[len-1] == '=') ? ((buf[len-2] == '=') ? 2 : 1) : 0;
		}
		obuf = FUNC1 (olen + 4);
		if (!obuf) {
			return false;
		}
		olen = FUNC2 (obuf, (const char *)buf, len);
	}
	if (olen > 0) {
		FUNC4 (cry, obuf, olen);
	}
	FUNC0 (obuf);
	return true;
}