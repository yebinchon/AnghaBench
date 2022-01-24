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
struct nn_chunk {size_t size; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_CHUNK_TAG ; 
 size_t UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nn_chunk* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void *FUNC3 (void *p, size_t n)
{
    struct nn_chunk *self;
    const size_t hdrsz = sizeof (struct nn_chunk) + 2 * sizeof (uint32_t);
    size_t empty_space;

    self = FUNC1 (p);

    /*  Sanity check. We cannot trim more bytes than there are in the chunk. */
    FUNC0 (n <= self->size);

    /*  Adjust the chunk header. */
    p = ((uint8_t*) p) + n;
    FUNC2 ((uint8_t*) (((uint32_t*) p) - 1), NN_CHUNK_TAG);
    empty_space = (uint8_t*) p - (uint8_t*) self - hdrsz;
    FUNC0(empty_space < UINT32_MAX);
    FUNC2 ((uint8_t*) (((uint32_t*) p) - 2), (uint32_t) empty_space);

    /*  Adjust the size of the message. */
    self->size -= n;

    return p;
}