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
struct circlebuf {scalar_t__ start_pos; scalar_t__ end_pos; scalar_t__ capacity; scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct circlebuf*,void*,size_t) ; 

__attribute__((used)) static inline void FUNC1(struct circlebuf *cb, void *data,
				       size_t size)
{
	FUNC0(cb, data, size);

	cb->size -= size;
	if (!cb->size) {
		cb->start_pos = cb->end_pos = 0;
		return;
	}

	cb->start_pos += size;
	if (cb->start_pos >= cb->capacity)
		cb->start_pos -= cb->capacity;
}