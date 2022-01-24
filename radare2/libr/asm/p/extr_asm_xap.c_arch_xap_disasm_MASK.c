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
typedef  int /*<<< orphan*/  ut64 ;
struct state {unsigned char const* s_buf; scalar_t__ s_ff_quirk; int /*<<< orphan*/ * s_out; int /*<<< orphan*/  s_off; } ;
struct directive {int /*<<< orphan*/  d_inst; int /*<<< orphan*/  d_asm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct directive*) ; 
 struct state* FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct state*,int /*<<< orphan*/ ,int) ; 
 struct directive* FUNC4 (struct state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct state*,struct directive*) ; 

__attribute__((used)) static int FUNC8(char *str, const unsigned char *buf, ut64 seek) {
	struct state *s = FUNC1();
	struct directive *d;
	FUNC3(s, 0, sizeof(*s));
	s->s_buf = buf;
	s->s_off = seek;
	s->s_out = NULL;
	d = FUNC4(s);
	if (d != NULL) {
		FUNC7 (s, d);
		FUNC6 (str, d->d_asm);
		FUNC0 (d);
	} else {
		*str = '\0';
	}
#if 0
	if (s->s_ff_quirk) {
		sprintf(d->d_asm, "DC\t0x%x", i2u16(&d->d_inst));
		s->s_ff_quirk = 0;
	}
#endif
	return 0;
}