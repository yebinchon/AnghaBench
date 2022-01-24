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
struct array_info {int /*<<< orphan*/  kids_type; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct array_info* FUNC4(const char* array_type) {
	struct array_info* ai = NULL;
	if (array_type) {
		ai = (struct array_info*)FUNC0(1, sizeof(struct array_info));
		if (ai) {
			char buf[128], *p;
			FUNC1(buf, sizeof(buf), "%s", array_type);
			p = FUNC2(buf, '[');
			if (p) {
				*p = 0;
			}
			FUNC3(ai->kids_type, buf);
		}
	}
	return ai;
}