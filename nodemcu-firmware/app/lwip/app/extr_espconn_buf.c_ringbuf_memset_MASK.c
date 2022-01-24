#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  TYPE_1__* ringbuf_t ;
struct TYPE_8__ {int /*<<< orphan*/  const* head; int /*<<< orphan*/  tail; int /*<<< orphan*/  const* buf; } ;

/* Variables and functions */
 size_t FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int,size_t) ; 
 size_t FUNC3 (TYPE_1__*) ; 
 size_t FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

size_t FUNC8(ringbuf_t dst, int c, size_t len)
{
	const uint8_t *bufend = FUNC5(dst);
	size_t nwritten = 0;
	size_t count = FUNC0(len, FUNC3(dst));
	int overflow = count > FUNC4(dst);

	while (nwritten != count){

		FUNC1(bufend > dst->head);
		size_t n = FUNC0(bufend - dst->head, count - nwritten);
		FUNC2(dst->head, c, n);
		dst->head += n;
		nwritten += n;

		if (dst->head == bufend)
			dst->head = dst->buf;
	}

	if (overflow){
		dst->tail = FUNC7(dst, dst->head);
		FUNC1(FUNC6(dst));
	}

	return nwritten;
}