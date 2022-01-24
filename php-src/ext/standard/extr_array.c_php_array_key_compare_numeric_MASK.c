#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zend_long ;
struct TYPE_4__ {scalar_t__ h; TYPE_1__* key; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_2__ Bucket ;

/* Variables and functions */
 int FUNC0 (double) ; 
 double FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(const void *a, const void *b) /* {{{ */
{
	Bucket *f = (Bucket *) a;
	Bucket *s = (Bucket *) b;

	if (f->key == NULL && s->key == NULL) {
		return (zend_long)f->h > (zend_long)s->h ? 1 : -1;
	} else {
		double d1, d2;
		if (f->key) {
			d1 = FUNC1(f->key->val, NULL);
		} else {
			d1 = (double)(zend_long)f->h;
		}
		if (s->key) {
			d2 = FUNC1(s->key->val, NULL);
		} else {
			d2 = (double)(zend_long)s->h;
		}
		return FUNC0(d1 - d2);
	}
}