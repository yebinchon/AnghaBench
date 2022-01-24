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
typedef  void uint8_t ;
struct circlebuf {size_t size; size_t end_pos; size_t capacity; void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,size_t) ; 

__attribute__((used)) static inline void FUNC2(struct circlebuf *cb, void *data,
				       size_t size)
{
	FUNC0(size <= cb->size);

	if (data) {
		size_t back_size = (cb->end_pos ? cb->end_pos : cb->capacity);

		if (back_size < size) {
			size_t front_size = size - back_size;
			size_t new_end_pos = cb->capacity - front_size;

			FUNC1((uint8_t *)data + (size - back_size), cb->data,
			       back_size);
			FUNC1(data, (uint8_t *)cb->data + new_end_pos,
			       front_size);
		} else {
			FUNC1(data, (uint8_t *)cb->data + cb->end_pos - size,
			       size);
		}
	}
}