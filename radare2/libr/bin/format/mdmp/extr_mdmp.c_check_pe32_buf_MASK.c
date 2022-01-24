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
typedef  int ut64 ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(RBuffer *buf, ut64 length) {
	unsigned int idx;
	if (!buf || length <= 0x3d) {
		return false;
	}
	idx = (FUNC1 (buf, 0x3c) | (FUNC1 (buf, 0x3d)<<8));
	if (length > idx + 0x18 + 2) {
		ut8 tmp1[2], tmp2[2], tmp3[2];
		FUNC2 (buf, 0, tmp1, 2);
		FUNC2 (buf, idx, tmp2, 2);
		FUNC2 (buf, idx + 0x18, tmp3, 2);
		if (!FUNC0 (tmp1, "MZ", 2) && !FUNC0 (tmp2, "PE", 2) && !FUNC0 (tmp3, "\x0b\x01", 2)) {
			return true;
		}
	}
	return false;
}