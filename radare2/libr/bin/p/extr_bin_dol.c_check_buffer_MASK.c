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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC2(RBuffer *buf) {
	ut8 tmp[6];
	int r = FUNC1 (buf, 0, tmp, sizeof (tmp));
	bool one = r == sizeof (tmp) && !FUNC0 (tmp, "\x00\x00\x01\x00\x00\x00", sizeof (tmp));
	if (one) {
		int r = FUNC1 (buf, 6, tmp, sizeof (tmp));
		if (r != 6) {
			return false;
		}
		return sizeof (tmp) && !FUNC0 (tmp, "\x00\x00\x00\x00\x00\x00", sizeof (tmp));
	}
	return false;
}