#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_aframe_pool {int element_size; scalar_t__ avpool; } ;
struct mp_aframe {TYPE_1__* av_frame; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {int* linesize; int nb_samples; TYPE_2__** buf; scalar_t__* extended_data; scalar_t__* data; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 size_t INT_MAX ; 
 size_t FUNC0 (int,int) ; 
 int FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__**) ; 
 scalar_t__* FUNC7 (int,int) ; 
 int FUNC8 (struct mp_aframe*) ; 
 size_t FUNC9 (struct mp_aframe*) ; 
 scalar_t__ FUNC10 (struct mp_aframe*) ; 
 int /*<<< orphan*/  mp_aframe_pool_destructor ; 
 size_t FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct mp_aframe_pool*,int /*<<< orphan*/ ) ; 

int FUNC13(struct mp_aframe_pool *pool, struct mp_aframe *frame,
                            int samples)
{
    int planes = FUNC8(frame);
    size_t sstride = FUNC9(frame);
    // FFmpeg hardcodes similar hidden possibly-requirements in a number of
    // places: av_frame_get_buffer(), libavcodec's get_buffer(), mem.c,
    // probably more.
    int align_samples = FUNC1(FUNC0(samples, 1), 32);
    int plane_size = FUNC1(sstride * align_samples, 64);
    int size = plane_size * planes;

    if (size <= 0 || FUNC10(frame))
        return -1;

    if (!pool->avpool || size > pool->element_size) {
        size_t alloc = FUNC11(size);
        if (alloc >= INT_MAX)
            return -1;
        FUNC5(&pool->avpool);
        pool->element_size = alloc;
        pool->avpool = FUNC4(pool->element_size, NULL);
        if (!pool->avpool)
            return -1;
        FUNC12(pool, mp_aframe_pool_destructor);
    }

    // Yes, you have to do all this shit manually.
    // At least it's less stupid than av_frame_get_buffer(), which just wipes
    // the entire frame struct on error for no reason.
    AVFrame *av_frame = frame->av_frame;
    if (av_frame->extended_data != av_frame->data)
        FUNC6(&av_frame->extended_data); // sigh
    av_frame->extended_data =
        FUNC7(planes, sizeof(av_frame->extended_data[0]));
    if (!av_frame->extended_data)
        FUNC2();
    av_frame->buf[0] = FUNC3(pool->avpool);
    if (!av_frame->buf[0])
        return -1;
    av_frame->linesize[0] = samples * sstride;
    for (int n = 0; n < planes; n++)
        av_frame->extended_data[n] = av_frame->buf[0]->data + n * plane_size;
    av_frame->nb_samples = samples;

    return 0;
}