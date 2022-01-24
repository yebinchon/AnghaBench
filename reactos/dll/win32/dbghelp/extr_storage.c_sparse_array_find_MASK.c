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
struct sparse_array {int /*<<< orphan*/  elements; } ;
struct key2index {unsigned long key; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 struct key2index* FUNC0 (struct sparse_array const*,unsigned long,unsigned int*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void*   FUNC2(const struct sparse_array* sa, unsigned long key)
{
    unsigned            idx;
    struct key2index*   pk2i;

    if ((pk2i = FUNC0(sa, key, &idx)) && pk2i->key == key)
        return FUNC1(&sa->elements, pk2i->index);
    return NULL;
}