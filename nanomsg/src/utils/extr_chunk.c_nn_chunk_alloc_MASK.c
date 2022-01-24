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
struct nn_chunk {size_t size; int /*<<< orphan*/  ffn; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NN_CHUNK_TAG ; 
 struct nn_chunk* FUNC0 (size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nn_chunk_default_free ; 
 void* FUNC2 (struct nn_chunk*) ; 
 size_t FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6 (size_t size, int type, void **result)
{
    size_t sz;
    struct nn_chunk *self;
    const size_t hdrsz = FUNC3 ();

    /*  Compute total size to be allocated. Check for overflow. */
    sz = hdrsz + size;
    if (FUNC5 (sz < hdrsz))
        return -ENOMEM;

    /*  Allocate the actual memory depending on the type. */
    switch (type) {
    case 0:
        self = FUNC0 (sz, "message chunk");
        break;
    default:
        return -EINVAL;
    }
    if (FUNC5 (!self))
        return -ENOMEM;

    /*  Fill in the chunk header. */
    FUNC1 (&self->refcount, 1);
    self->size = size;
    self->ffn = nn_chunk_default_free;

    /*  Fill in the size of the empty space between the chunk header
        and the message. */
    FUNC4 ((uint8_t*) ((uint32_t*) (self + 1)), 0);

    /*  Fill in the tag. */
    FUNC4 ((uint8_t*) ((((uint32_t*) (self + 1))) + 1), NN_CHUNK_TAG);

    *result = FUNC2 (self);
    return 0;
}