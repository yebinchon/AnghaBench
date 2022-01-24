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
struct circlebuf {int size; int capacity; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct circlebuf*,size_t) ; 

__attribute__((used)) static inline void FUNC2(struct circlebuf *cb)
{
	size_t new_capacity;
	if (cb->size <= cb->capacity)
		return;

	new_capacity = cb->capacity * 2;
	if (cb->size > new_capacity)
		new_capacity = cb->size;

	cb->data = FUNC0(cb->data, new_capacity);
	FUNC1(cb, new_capacity);
	cb->capacity = new_capacity;
}