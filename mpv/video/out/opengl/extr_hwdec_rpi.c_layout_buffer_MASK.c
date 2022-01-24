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
typedef  int /*<<< orphan*/  uint8_t ;
struct mp_image_params {scalar_t__ imgfmt; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct mp_image {int* stride; int /*<<< orphan*/ ** planes; } ;
struct TYPE_3__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  ALIGN_H ; 
 int /*<<< orphan*/  ALIGN_W ; 
 scalar_t__ IMGFMT_420P ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_image*,struct mp_image_params*) ; 

__attribute__((used)) static size_t FUNC3(struct mp_image *mpi, MMAL_BUFFER_HEADER_T *buffer,
                            struct mp_image_params *params)
{
    FUNC1(params->imgfmt == IMGFMT_420P);
    FUNC2(mpi, params);
    int w = FUNC0(params->w, ALIGN_W);
    int h = FUNC0(params->h, ALIGN_H);
    uint8_t *cur = buffer ? buffer->data : NULL;
    size_t size = 0;
    for (int i = 0; i < 3; i++) {
        int div = i ? 2 : 1;
        mpi->planes[i] = cur;
        mpi->stride[i] = w / div;
        size_t plane_size = h / div * mpi->stride[i];
        if (cur)
            cur += plane_size;
        size += plane_size;
    }
    return size;
}