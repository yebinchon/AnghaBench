#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut32 ;
struct TYPE_4__ {scalar_t__ x; scalar_t__ n; scalar_t__ p; } ;
typedef  TYPE_1__ buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*,scalar_t__) ; 

int FUNC2(buffer *s, const char *buf, ut32 len) {
	ut32 n;
	if (!s || !s->x || !buf) {
		return 0;
	}
	while (len > (n = s->n - s->p)) {
		FUNC1 (s->x + s->p, buf, n);
		s->p += n; buf += n; len -= n;
		if (!FUNC0 (s)) {
			return 0;
		}
	}
	/* now len <= s->n - s->p */
	FUNC1 (s->x + s->p, buf, len);
	s->p += len;
	return 1;
}