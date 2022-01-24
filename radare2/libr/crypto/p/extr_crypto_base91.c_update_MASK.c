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
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_4__ {int dir; } ;
typedef  TYPE_1__ RCrypto ;

/* Variables and functions */
 int INSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC5(RCrypto *cry, const ut8 *buf, int len) {
	int olen = INSIZE;
	if (!cry || !buf || len < 1) {
		return false;
	}
	ut8 *obuf = FUNC1 (olen);
	if (!obuf) {
		return false;
	}
	if (cry->dir == 0) {
		olen = FUNC3 ((char *)obuf, (const ut8 *)buf, len);
	} else if (cry->dir == 1) {
		olen = FUNC2 (obuf, (const char *)buf, len);
	}
	FUNC4 (cry, obuf, olen);
	FUNC0 (obuf);
	return true;
}