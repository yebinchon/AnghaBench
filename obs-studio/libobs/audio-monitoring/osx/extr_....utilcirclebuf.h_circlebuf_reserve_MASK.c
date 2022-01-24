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
struct circlebuf {size_t capacity; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct circlebuf*,size_t) ; 

__attribute__((used)) static inline void FUNC2(struct circlebuf *cb, size_t capacity)
{
	if (capacity <= cb->capacity)
		return;

	cb->data = FUNC0(cb->data, capacity);
	FUNC1(cb, capacity);
	cb->capacity = capacity;
}