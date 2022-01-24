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
typedef  int ut8 ;
typedef  int ut64 ;
typedef  int ut16 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int FUNC0 (int const*,int) ; 
 int* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int const*,int) ; 

__attribute__((used)) static bool FUNC6(RBuffer *b) {
	int i;
	ut8 ch;
	if (FUNC2 (b, 0, &ch, 1) != 1) {
		return false;
	}
	if (ch != 0x80 && ch != 0x82) {
		return false;
	}
	ut16 rec_size = FUNC3 (b, 1);
	ut8 str_size; (void)FUNC2 (b, 3, &str_size, 1);
	ut64 length = FUNC4 (b);
	if (str_size + 2 != rec_size || length < rec_size + 3) {
		return false;
	}
	// check that the string is ASCII
	for (i = 4; i < str_size + 4; i++) {
		if (FUNC2 (b, i, &ch, 1) != 1) {
			break;
		}
		if (ch > 0x7f) {
			return false;
		}
	}
	const ut8 *buf = FUNC1 (b, NULL);
	if (buf == NULL) {
		// hackaround until we make this plugin not use RBuf.data
		ut8 buf[1024] = {0};
		FUNC2 (b, 0, buf, sizeof (buf));
		return FUNC0 (buf, sizeof (buf));
	}
	FUNC5 (buf, false);
	return FUNC0 (buf, length);
}