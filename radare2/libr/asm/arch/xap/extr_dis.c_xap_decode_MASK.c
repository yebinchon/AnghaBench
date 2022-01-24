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
struct state {int s_prefix; int s_prefix_val; } ;
struct directive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct state*,struct directive*) ; 
 int /*<<< orphan*/  FUNC1 (struct state*,struct directive*) ; 
 int /*<<< orphan*/  FUNC2 (struct state*,struct directive*) ; 

__attribute__((used)) static void FUNC3(struct state *s, struct directive *d) {
	int prefix = s->s_prefix;
	if (!FUNC0 (s, d))
		if (!FUNC1 (s, d))
			FUNC2 (s, d);
	if (s->s_prefix == prefix)
		s->s_prefix_val = s->s_prefix = 0;
}