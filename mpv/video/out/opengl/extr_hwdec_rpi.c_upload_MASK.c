#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ra_hwdec {struct priv* priv; } ;
struct priv {int /*<<< orphan*/  params; TYPE_1__* swpool; } ;
struct mp_image {int /*<<< orphan*/  member_0; void** planes; } ;
struct TYPE_9__ {int /*<<< orphan*/  length; } ;
struct TYPE_8__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_2__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  IMGFMT_MMAL ; 
 int /*<<< orphan*/  FUNC0 (struct ra_hwdec*,char*) ; 
 int /*<<< orphan*/  free_mmal_buffer ; 
 int /*<<< orphan*/  FUNC1 (struct mp_image*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_image*,struct mp_image*) ; 
 struct mp_image* FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_image*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mp_image *FUNC8(struct ra_hwdec *hw, struct mp_image *hw_image)
{
    struct priv *p = hw->priv;

    MMAL_BUFFER_HEADER_T *buffer = FUNC4(p->swpool->queue);
    if (!buffer) {
        FUNC0(hw, "Can't allocate buffer.\n");
        return NULL;
    }
    FUNC3(buffer);

    struct mp_image *new_ref = FUNC6(NULL, buffer,
                                                       free_mmal_buffer);
    if (!new_ref) {
        FUNC2(buffer);
        FUNC0(hw, "Out of memory.\n");
        return NULL;
    }

    FUNC7(new_ref, IMGFMT_MMAL);
    new_ref->planes[3] = (void *)buffer;

    struct mp_image dmpi = {0};
    buffer->length = FUNC1(&dmpi, buffer, &p->params);
    FUNC5(&dmpi, hw_image);

    return new_ref;
}