#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int num_elts; } ;
struct sparse_array {TYPE_1__ elements; TYPE_1__ key2index; } ;
struct pool {int dummy; } ;
struct key2index {unsigned long key; int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct key2index* FUNC2 (struct sparse_array*,unsigned long,unsigned int*) ; 
 void* FUNC3 (TYPE_1__*,struct pool*) ; 
 struct key2index* FUNC4 (TYPE_1__*,unsigned int) ; 

void*   FUNC5(struct sparse_array* sa, unsigned long key, 
                         struct pool* pool)
{
    unsigned            idx, i;
    struct key2index*   pk2i;
    struct key2index*   to;

    pk2i = FUNC2(sa, key, &idx);
    if (pk2i && pk2i->key == key)
    {
        FUNC0("re-adding an existing key\n");
        return NULL;
    }
    to = FUNC3(&sa->key2index, pool);
    if (pk2i)
    {
        /* we need to shift vector's content... */
        /* let's do it brute force... (FIXME) */
        FUNC1(sa->key2index.num_elts >= 2);
        for (i = sa->key2index.num_elts - 1; i > idx; i--)
        {
            pk2i = FUNC4(&sa->key2index, i - 1);
            *to = *pk2i;
            to = pk2i;
        }
    }

    to->key = key;
    to->index = sa->elements.num_elts;

    return FUNC3(&sa->elements, pool);
}