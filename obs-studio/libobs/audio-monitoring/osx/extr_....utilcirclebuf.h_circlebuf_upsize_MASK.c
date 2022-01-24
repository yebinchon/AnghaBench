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
struct circlebuf {size_t size; size_t end_pos; size_t capacity; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct circlebuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static inline void FUNC2(struct circlebuf *cb, size_t size)
{
	size_t add_size = size - cb->size;
	size_t new_end_pos = cb->end_pos + add_size;

	if (size <= cb->size)
		return;

	cb->size = size;
	FUNC0(cb);

	if (new_end_pos > cb->capacity) {
		size_t back_size = cb->capacity - cb->end_pos;
		size_t loop_size = add_size - back_size;

		if (back_size)
			FUNC1((uint8_t *)cb->data + cb->end_pos, 0, back_size);

		FUNC1(cb->data, 0, loop_size);
		new_end_pos -= cb->capacity;
	} else {
		FUNC1((uint8_t *)cb->data + cb->end_pos, 0, add_size);
	}

	cb->end_pos = new_end_pos;
}