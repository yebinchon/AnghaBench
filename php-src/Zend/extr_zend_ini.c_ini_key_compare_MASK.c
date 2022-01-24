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
struct TYPE_2__ {scalar_t__ h; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ Bucket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const void *a, const void *b) /* {{{ */
{
	const Bucket *f;
	const Bucket *s;

	f = (const Bucket *) a;
	s = (const Bucket *) b;

	if (!f->key && !s->key) { /* both numeric */
		if (f->h > s->h) {
			return -1;
		} else if (f->h < s->h) {
			return 1;
		}
		return 0;
	} else if (!f->key) { /* f is numeric, s is not */
		return -1;
	} else if (!s->key) { /* s is numeric, f is not */
		return 1;
	} else { /* both strings */
		return FUNC2(FUNC1(f->key), FUNC0(f->key), FUNC1(s->key), FUNC0(s->key));
	}
}