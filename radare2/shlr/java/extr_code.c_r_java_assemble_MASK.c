#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int ut8 ;
typedef  int ut64 ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int byte; int size; int /*<<< orphan*/  op_type; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 TYPE_1__* JAVA_OPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

int FUNC4(ut64 addr, ut8 *bytes, const char *string) {
	ut64 args[4] = {0};
	int i, a, b, c, d;
	char name[128];

	FUNC3 (name, string, sizeof (name) - 1);
	name[sizeof (name) - 1] = 0;

	int nargs = FUNC1 (name, args, 4);
	a = args[0];
	b = args[1];
	c = args[2];
	d = args[3];
	for (i = 0; JAVA_OPS[i].name != NULL; i++) {
		if (!FUNC2 (name, JAVA_OPS[i].name)) {
			bytes[0] = JAVA_OPS[i].byte;
			switch (JAVA_OPS[i].size) {
			case 2: bytes[1] = a;
				break;
			case 3:
				if (nargs == 2) {
					bytes[1] = a;
					bytes[2] = b;
				} else {
					if (FUNC0 (JAVA_OPS[i].op_type)) {
						// relative jmp
						a -= addr;
					}
					bytes[1] = (a >> 8) & 0xff;
					bytes[2] = a & 0xff;
				}
				break;
			case 5: bytes[1] = a;
				bytes[2] = b;
				bytes[3] = c;
				bytes[4] = d;
				break;
			}
			return JAVA_OPS[i].size;
		}
	}
	return 0;
}