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
struct state {scalar_t__ s_format; } ;
struct directive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct directive*) ; 
 struct directive* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct directive*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct state*,struct directive*) ; 
 int FUNC5 (struct state*,struct directive*) ; 

__attribute__((used)) static inline struct directive *FUNC6(struct state *s) {
	int rd;
	struct directive *d = FUNC1 (sizeof (*d));
	if (!d) {
		FUNC3 ("malloc()");
		return NULL;
	}
	FUNC2 (d, 0, sizeof (*d));
#if 0
	if (s->s_format)
		rd = read_text(s, d);
	else
#endif
	rd = FUNC4 (s, d);
	if (!rd) {
		FUNC0 (d);
		return NULL;
	}

	return d;
}