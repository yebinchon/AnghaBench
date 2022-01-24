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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(RBuffer *b) {
	ut8 buf[8];
	if (FUNC2 (b, 0, buf, sizeof (buf)) != sizeof (buf)) {
		return false;
	}
	if (FUNC3 (b) >= 32 && !FUNC1 (buf, "MENUET0", 7)) {
		switch (buf[7]) {
		case '0':
		case '1':
		case '2':
			return true;
		}
		FUNC0 ("Unsupported MENUET version header\n");
	}
	return false;
}