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
struct mp_image {TYPE_1__** bufs; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  imgfmt; int /*<<< orphan*/ * planes; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int MP_IMAGE_BYTE_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_image*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC5(struct mp_image *mpi)
{
    FUNC0(!mpi->planes[0]);
    FUNC0(!mpi->bufs[0]);

    int align = MP_IMAGE_BYTE_ALIGN;

    int size = FUNC4(mpi->imgfmt, mpi->w, mpi->h, align);
    if (size < 0)
        return false;

    // Note: mp_image_pool assumes this creates only 1 AVBufferRef.
    mpi->bufs[0] = FUNC1(size + align);
    if (!mpi->bufs[0])
        return false;

    if (!FUNC3(mpi, align, mpi->bufs[0]->data, mpi->bufs[0]->size)) {
        FUNC2(&mpi->bufs[0]);
        return false;
    }

    return true;
}