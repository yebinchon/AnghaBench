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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  st ; 

__attribute__((used)) static bool FUNC5(RCrypto *cry, const ut8 *buf, int len) {
	if (!cry || !buf) {
		return false;
	}
	ut8 *obuf = FUNC2 (1, len);
	if (!obuf) {
		return false;
	}
	if (cry->dir == 0) {
		FUNC0 (&st, buf, obuf, len);
	} else if (cry->dir == 1) {
		FUNC1 (&st, buf, obuf, len);
	}
	FUNC4 (cry, obuf, len);
	FUNC3 (obuf);
	return true;
}