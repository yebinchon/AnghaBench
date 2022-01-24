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
struct timeval {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct ringbuf_entry {int /*<<< orphan*/  usec; int /*<<< orphan*/  sec; } ;
struct ringbuf {int slen; int /*<<< orphan*/  len; int /*<<< orphan*/  fill; struct ringbuf_entry* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ringbuf_entry*,int /*<<< orphan*/ ,int) ; 

struct ringbuf_entry * FUNC2(struct ringbuf *r)
{
	struct timeval t;
	struct ringbuf_entry *e;

	FUNC0(&t, NULL);

	e = r->buf + (r->fill++ * r->slen);
	r->fill %= r->len;

	FUNC1(e, 0, r->slen);

	e->sec = t.tv_sec;
	e->usec = t.tv_usec;

	return e;
}