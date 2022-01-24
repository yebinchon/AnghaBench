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
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_3__ {int len; int prefix; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 TYPE_1__* _s ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,int*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int*) ; 
 TYPE_1__ s ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int) ; 

__attribute__((used)) static void FUNC9(const char *seed) {
	const char *sptr = seed;
	if (!seed) {
		_s = NULL;
		return;
	}
	_s = &s;
	if (!FUNC5 (seed, "-")) {
		s.buf = (ut8 *)FUNC4 (&s.len);
		return;
	}
	if (seed[0] == '@') {
		s.buf = (ut8 *)FUNC2 (seed + 1, &s.len);
		return;
	}
	s.buf = (ut8 *) FUNC1 (FUNC7 (seed) + 128);
	if (!s.buf) {
		_s = NULL;
		return;
	}
	if (*seed == '^') {
		s.prefix = 1;
		sptr++;
	} else {
		s.prefix = 0;
	}
	if (!FUNC8 (sptr, "s:", 2)) {
		FUNC6 ((char *) s.buf, sptr + 2);
		s.len = FUNC7 (sptr + 2);
	} else {
		s.len = FUNC3 (sptr, s.buf);
		if (s.len < 1) {
			FUNC6 ((char *) s.buf, sptr);
			s.len = FUNC7 (sptr);
			FUNC0 ("Warning: This is not an hexpair, assuming a string, prefix it with 's:' to skip this message.");
		}
	}
}