#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uchar ;
typedef  int ssize_t ;
struct TYPE_3__ {int key; char* val; } ;
typedef  TYPE_1__ kv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* home ; 
 scalar_t__ FUNC1 (int) ; 
 char* FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static char *FUNC5(kv *kvarr, char *buf, int key, uchar max, bool path)
{
	int r = 0;

	for (; kvarr[r].key && r < max; ++r) {
		if (kvarr[r].key == key) {
			if (!path)
				return kvarr[r].val;

			if (kvarr[r].val[0] == '~') {
				ssize_t len = FUNC3(home);
				ssize_t loclen = FUNC3(kvarr[r].val);

				if (!buf)
					buf = (char *)FUNC1(len + loclen);

				FUNC4(buf, home, len + 1);
				FUNC4(buf + len, kvarr[r].val + 1, loclen);
				return buf;
			}

			return FUNC2(kvarr[r].val, buf);
		}
	}

	FUNC0("Invalid key");
	return NULL;
}