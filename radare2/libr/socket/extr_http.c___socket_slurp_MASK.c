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
typedef  scalar_t__ ut8 ;
typedef  int /*<<< orphan*/  RSocket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC2 (RSocket *s, ut8 *buf, int bufsz) {
	int i;
	int chsz = 1;
	// r_socket_block_time (s, 1, 1, 0);
	if (FUNC1 (s, (ut8 *) buf, 1) != 1) {
		return 0;
	}
	for (i = 1; i < bufsz; i += chsz) {
		buf[i] =0;
		FUNC0 (s, 1, 0, 1000);
		int olen = FUNC1 (s, (ut8 *) buf + i , chsz);
		if (olen != chsz) {
			buf[i] = 0;
			break;
		}
	}
	return i;
}