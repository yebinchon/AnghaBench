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
typedef  scalar_t__ ut16 ;
typedef  int /*<<< orphan*/  h ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(RBuffer *b, ut16 offset) {
	ut8 h[2];
	if (FUNC1 (b, offset, h, sizeof (h)) != sizeof (h)) {
		return false;
	}
	if (!FUNC0 (h, "PE", 2)) {
		if (offset + 0x20 < FUNC2 (b)) {
			if (FUNC1 (b, offset + 0x18, h, sizeof (h)) != 2) {
				return false;
			}
			if (!FUNC0 (h, "\x0b\x01", 2)) {
				return true;
			}
		}
	} else {
		if (!FUNC0 (h, "NE", 2)
		 || !FUNC0 (h, "LE", 2)
		 || !FUNC0 (h, "LX", 2)
		 || !FUNC0 (h, "PL", 2)) {
			return true;
		}
	}
	return false;
}