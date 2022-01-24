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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(RBuffer *b) {
	if (FUNC4 (b) > 32) {
		ut8 buf[4];
		FUNC1 (b, 0, buf, sizeof (buf));
		if (!FUNC0 (buf, "\xca\xfe\xba\xbe", 4)) {
			int off = FUNC3 (b, 4 * sizeof (int));
			int version = FUNC2 (b, 6);
			if (off > 0 && version < 1024) {
				return true;
			}
		}
	}
	return false;
}