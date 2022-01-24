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
typedef  int ut16 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(RBuffer *b) {
	ut64 length = FUNC3 (b);
	if (length <= 0x3d) {
		return false;
	}
	ut16 idx = FUNC2 (b, 0x3c);
	if (idx + 26 < length) {
		/* Here PE signature for usual PE files
		 * and PL signature for Phar Lap TNT DOS extender 32bit executables
		 */
		ut8 buf[2];
		FUNC1 (b, 0, buf, sizeof (buf));
		if (!FUNC0 (buf, "MZ", 2)) {
			FUNC1 (b, idx, buf, sizeof (buf));
			// TODO: Add one more indicator, to prevent false positives
			if (!FUNC0 (buf, "PL", 2)) {
				return true;
			}
			if (!FUNC0 (buf, "PE", 2)) {
				FUNC1 (b, idx + 0x18, buf, sizeof (buf));
				return !FUNC0 (buf, "\x0b\x01", 2);
			}
		}
	}
	return false;
}