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
struct serializer {size_t (* read ) (int /*<<< orphan*/ ,void*,size_t) ;int /*<<< orphan*/  data; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static inline size_t FUNC1(struct serializer *s, void *data, size_t size)
{
	if (s && s->read && data && size)
		return s->read(s->data, (void *)data, size);
	return 0;
}