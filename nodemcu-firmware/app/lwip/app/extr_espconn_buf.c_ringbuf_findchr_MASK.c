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
typedef  int /*<<< orphan*/  uint8_t ;
struct ringbuf_t {int /*<<< orphan*/ * buf; int /*<<< orphan*/ * tail; } ;

/* Variables and functions */
 size_t FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int,size_t) ; 
 int FUNC3 (struct ringbuf_t const*) ; 
 size_t FUNC4 (struct ringbuf_t const*) ; 
 int /*<<< orphan*/ * FUNC5 (struct ringbuf_t const*) ; 

size_t FUNC6(const struct ringbuf_t *rb, int c, size_t offset)
{
	const uint8_t *bufend = FUNC5(rb);
	size_t bytes_used = FUNC4(rb);
	if (offset >= bytes_used)
		return bytes_used;

	const uint8_t *start = rb ->buf + (((rb->tail - rb->buf) + offset) % FUNC3(rb));
	FUNC1(bufend > start);
	size_t n = FUNC0(bufend - start, bytes_used - offset);
	const uint8_t *found = (const uint8_t *)FUNC2(start, c, n);
	if (found)
		return offset + (found - start);
	else
		return FUNC6(rb, c, offset + n);
}