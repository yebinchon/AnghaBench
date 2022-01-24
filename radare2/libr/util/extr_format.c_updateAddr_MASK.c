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
typedef  scalar_t__ ut64 ;
typedef  scalar_t__ ut32 ;

/* Variables and functions */
 int THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static float FUNC3(const ut8 *buf, int len, int endian, ut64 *addr, ut64 *addr64) {
	float f = 0.0;
	// assert sizeof (float) == sizeof (ut32))
	// XXX 999 is used as an implicit buffer size, we should pass the buffer size to every function too, otherwise this code will give us some problems
	if (len >= THRESHOLD - 7 && len < THRESHOLD) {
		len = len + THRESHOLD; // get the real len to avoid oob
	} else {
		len = 999;
	}
	if (len >= sizeof (float)) {
		FUNC0 ((ut8*)&f, buf, sizeof (float), endian);
	}
	if (addr && len > 3) {
		ut32 tmpaddr = FUNC1 (buf, endian);
		*addr = (ut64)tmpaddr;
	}
	if (addr64 && len > 7) {
		*addr64 = FUNC2 (buf, endian);
	}
	return f;
}