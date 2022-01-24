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
struct circlebuf {size_t size; size_t start_pos; size_t capacity; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct circlebuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static inline void FUNC2(struct circlebuf *cb, size_t size)
{
	cb->size += size;
	FUNC0(cb);

	if (cb->start_pos < size) {
		size_t back_size = size - cb->start_pos;

		if (cb->start_pos)
			FUNC1(cb->data, 0, cb->start_pos);

		cb->start_pos = cb->capacity - back_size;
		FUNC1((uint8_t *)cb->data + cb->start_pos, 0, back_size);
	} else {
		cb->start_pos -= size;
		FUNC1((uint8_t *)cb->data + cb->start_pos, 0, size);
	}
}