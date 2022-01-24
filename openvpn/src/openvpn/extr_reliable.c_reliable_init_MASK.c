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
struct reliable_entry {int /*<<< orphan*/  buf; } ;
struct reliable {int hold; int size; int offset; struct reliable_entry* array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct reliable) ; 
 int RELIABLE_CAPACITY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

void
FUNC4(struct reliable *rel, int buf_size, int offset, int array_size, bool hold)
{
    int i;

    FUNC1(*rel);
    FUNC0(array_size > 0 && array_size <= RELIABLE_CAPACITY);
    rel->hold = hold;
    rel->size = array_size;
    rel->offset = offset;
    for (i = 0; i < rel->size; ++i)
    {
        struct reliable_entry *e = &rel->array[i];
        e->buf = FUNC2(buf_size);
        FUNC0(FUNC3(&e->buf, offset));
    }
}