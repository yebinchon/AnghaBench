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
struct TYPE_3__ {int /*<<< orphan*/  constpool; int /*<<< orphan*/  attr; } ;
typedef  int /*<<< orphan*/  RStrBuf ;
typedef  TYPE_1__ RConsCanvas ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *FUNC6(RConsCanvas *c, const char *s) {
	if (!c || !s) {
		return NULL;
	}
	const char *p = s;

	while (FUNC0 (p)) {
		p += 2;
		while (*p && *p != 'J' && *p != 'm' && *p != 'H') {
			p++;
		}
		p++;
	}

	const int slen = p - s;
	if (slen > 0) {
		RStrBuf tmp;
		FUNC5 (&tmp);
		FUNC2 (&tmp, s, slen);
		c->attr = FUNC1 (&c->constpool, FUNC4 (&tmp));
		FUNC3 (&tmp);
	}
	return p;
}