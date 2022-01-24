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
struct circlebuf {size_t size; size_t capacity; size_t start_pos; void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,size_t) ; 

__attribute__((used)) static inline void FUNC2(struct circlebuf *cb, void *data,
					size_t size)
{
	FUNC0(size <= cb->size);

	if (data) {
		size_t start_size = cb->capacity - cb->start_pos;

		if (start_size < size) {
			FUNC1(data, (uint8_t *)cb->data + cb->start_pos,
			       start_size);
			FUNC1((uint8_t *)data + start_size, cb->data,
			       size - start_size);
		} else {
			FUNC1(data, (uint8_t *)cb->data + cb->start_pos, size);
		}
	}
}