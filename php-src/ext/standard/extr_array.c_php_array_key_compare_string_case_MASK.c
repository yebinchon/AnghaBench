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
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;
struct TYPE_4__ {int /*<<< orphan*/  h; TYPE_1__* key; } ;
struct TYPE_3__ {char* val; size_t len; } ;
typedef  TYPE_2__ Bucket ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_LENGTH_OF_LONG ; 
 int FUNC0 (char const*,size_t,char const*,size_t) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const void *a, const void *b) /* {{{ */
{
	Bucket *f = (Bucket *) a;
	Bucket *s = (Bucket *) b;
	const char *s1, *s2;
	size_t l1, l2;
	char buf1[MAX_LENGTH_OF_LONG + 1];
	char buf2[MAX_LENGTH_OF_LONG + 1];

	if (f->key) {
		s1 = f->key->val;
		l1 = f->key->len;
	} else {
		s1 = FUNC1(buf1 + sizeof(buf1) - 1, f->h);
		l1 = buf1 + sizeof(buf1) - 1 - s1;
	}
	if (s->key) {
		s2 = s->key->val;
		l2 = s->key->len;
	} else {
		s2 = FUNC1(buf2 + sizeof(buf2) - 1, s->h);
		l2 = buf2 + sizeof(buf2) - 1 - s1;
	}
	return FUNC0(s1, l1, s2, l2);
}