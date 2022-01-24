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
typedef  int /*<<< orphan*/  uint32_t ;
struct nn_chunk {int /*<<< orphan*/  (* ffn ) (struct nn_chunk*) ;int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_CHUNK_TAG_DEALLOCATED ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nn_chunk* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nn_chunk*) ; 

void FUNC5 (void *p)
{
    struct nn_chunk *self;

    self = FUNC2 (p);

    /*  Decrement the reference count. Actual deallocation happens only if
        it drops to zero. */
    if (FUNC0 (&self->refcount, 1) <= 1) {

        /*  Mark chunk as deallocated. */
        FUNC3 ((uint8_t*) (((uint32_t*) p) - 1), NN_CHUNK_TAG_DEALLOCATED);

        /*  Deallocate the resources held by the chunk. */
        FUNC1 (&self->refcount);

        /*  Deallocate the memory block according to the allocation
            mechanism specified. */
        self->ffn (self);
    }
}