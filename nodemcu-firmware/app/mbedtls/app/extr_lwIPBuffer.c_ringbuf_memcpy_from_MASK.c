#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void uint8_t ;
typedef  TYPE_1__* ringbuf_t ;
struct TYPE_5__ {void const* tail; void const* buf; } ;

/* Variables and functions */
 size_t FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,size_t) ; 
 size_t FUNC3 (TYPE_1__*) ; 
 void* FUNC4 (TYPE_1__*) ; 

void *FUNC5(void *dst,ringbuf_t src, size_t count)
{
	size_t bytes_used = FUNC3(src);

	if (count > bytes_used)
		return NULL;

	const uint8_t *u8dst = dst;
	const uint8_t *bufend = FUNC4(src);
	size_t nwritten = 0;

	while (nwritten != count){
		FUNC1(bufend > src->tail);
		size_t n = FUNC0(bufend - src->tail, count - nwritten);
		FUNC2((uint8_t*)u8dst + nwritten, src->tail, n);
		src->tail += n;
		nwritten += n;

		if (src->tail == bufend)
			src->tail = src->buf;
	}

	FUNC1(count + FUNC3(src) == bytes_used);
	return src->tail;
}