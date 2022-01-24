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
struct mp_image {int /*<<< orphan*/ * bufs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void (*) (void*,int /*<<< orphan*/ *),void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_image*,int,int /*<<< orphan*/ *,int) ; 
 struct mp_image* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_image*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_image*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_image*) ; 

struct mp_image *FUNC6(int imgfmt, int w, int h, int stride_align,
                                      uint8_t *buffer, int buffer_size,
                                      void *free_opaque,
                                      void (*free)(void *opaque, uint8_t *data))
{
    struct mp_image *mpi = FUNC2(NULL);
    FUNC4(mpi, imgfmt);
    FUNC3(mpi, w, h);

    if (!FUNC1(mpi, stride_align, buffer, buffer_size))
        goto fail;

    mpi->bufs[0] = FUNC0(buffer, buffer_size, free, free_opaque, 0);
    if (!mpi->bufs[0])
        goto fail;

    return mpi;

fail:
    FUNC5(mpi);
    return NULL;
}