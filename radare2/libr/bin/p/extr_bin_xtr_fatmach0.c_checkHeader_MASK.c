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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(RBuffer *b) {
	ut8 buf[4];
	const ut64 sz = FUNC3 (b);
	FUNC1 (b, 0, buf, 4);
	if (sz >= 0x300 && !FUNC0 (buf, "\xca\xfe\xba\xbe", 4)) {
		ut64 addr = 4 * sizeof (32);
		ut64 off = FUNC2 (b, addr);
		if (off > 0 && off + 4 < sz) {
			ut64 h = 0;
			FUNC1 (b, h + off, buf, 4);
			if (!FUNC0 (buf, "\xce\xfa\xed\xfe", 4) ||
				!FUNC0 (buf, "\xfe\xed\xfa\xce", 4) ||
				!FUNC0 (buf, "\xfe\xed\xfa\xcf", 4) ||
				!FUNC0 (buf, "\xcf\xfa\xed\xfe", 4)) {
				return true;
			}
		}
	}
	return false;
}