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
typedef  int ut32 ;
typedef  int ut16 ;
typedef  int st16 ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(RBuffer *b) {
	st16 cs = FUNC2 (b, 0x16);
	ut16 ip = FUNC2 (b, 0x14);
	ut32 pa = ((FUNC2 (b, 0x08) + cs) << 4) + ip;

	/* A minimal MZ header is 0x1B bytes.  Header length is measured in
	 * 16-byte paragraphs so the minimum header must occupy 2 paragraphs.
	 * This means that the entrypoint should be at least 0x20 unless someone
	 * cleverly fit a few instructions inside the header.
	 */
	pa &= 0xffff;
	ut64 length = FUNC3 (b);
	if (pa >= 0x20 && pa + 1 < length) {
		ut16 pe = FUNC2 (b,  0x3c);
		if (pe + 2 < length && length > 0x104) {
			ut8 h[2];
			if (FUNC1 (b, pe, h, 2) == 2) {
				if (!FUNC0 (h, "PE", 2)) {
					return false;
				}
			}
		}
		return true;
	}
	return false;
}