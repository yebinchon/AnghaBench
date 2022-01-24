#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zend_uchar ;
typedef  scalar_t__ zend_long ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  val; } ;
struct TYPE_4__ {TYPE_2__* key; scalar_t__ h; } ;
typedef  TYPE_1__ Bucket ;

/* Variables and functions */
 scalar_t__ IS_DOUBLE ; 
 scalar_t__ IS_LONG ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,double*,int) ; 
 int FUNC2 (TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(const void *a, const void *b) /* {{{ */
{
	Bucket *f = (Bucket *) a;
	Bucket *s = (Bucket *) b;
	zend_uchar t;
	zend_long l1, l2;
	double d;

	if (f->key == NULL) {
		if (s->key == NULL) {
			return (zend_long)f->h > (zend_long)s->h ? 1 : -1;
		} else {
			l1 = (zend_long)f->h;
			t = FUNC1(s->key->val, s->key->len, &l2, &d, 1);
			if (t == IS_LONG) {
				/* pass */
			} else if (t == IS_DOUBLE) {
				return FUNC0((double)l1 - d);
			} else {
				l2 = 0;
			}
		}
	} else {
		if (s->key) {
			return FUNC2(f->key, s->key);
		} else {
			l2 = (zend_long)s->h;
			t = FUNC1(f->key->val, f->key->len, &l1, &d, 1);
			if (t == IS_LONG) {
				/* pass */
			} else if (t == IS_DOUBLE) {
				return FUNC0(d - (double)l2);
			} else {
				l1 = 0;
			}
		}
	}
	return FUNC0(l1 - l2);
}