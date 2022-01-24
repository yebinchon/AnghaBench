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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC2(RBuffer *buf) {
	FUNC1 (buf, false);

	ut8 tmp[16];
	int read_length = FUNC0 (buf, 0, tmp, sizeof (tmp));
	if (read_length <= 0) {
		return false;
	}

	const ut8 *p = (const ut8 *)tmp;
	int i;
	for (i = 0; i < read_length; i++) {
		switch (p[i]) {
		case '+':
		case '-':
		case '>':
		case '<':
		case '[':
		case ']':
		case ',':
		case '.':
		case ' ':
		case '\n':
		case '\r':
			break;
		default:
			return false;
		}
	}
	return true;
}