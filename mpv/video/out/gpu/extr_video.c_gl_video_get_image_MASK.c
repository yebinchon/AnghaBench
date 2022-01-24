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
struct mp_image {int dummy; } ;
struct gl_video {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gl_video*,int) ; 
 void* FUNC1 (struct gl_video*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gl_video*,void*) ; 
 struct mp_image* FUNC3 (int,int,int,int,void*,int,struct gl_video*,int /*<<< orphan*/  (*) (struct gl_video*,void*)) ; 
 int FUNC4 (int,int,int,int) ; 

struct mp_image *FUNC5(struct gl_video *p, int imgfmt, int w, int h,
                                    int stride_align)
{
    if (!FUNC0(p, imgfmt))
        return NULL;

    int size = FUNC4(imgfmt, w, h, stride_align);
    if (size < 0)
        return NULL;

    int alloc_size = size + stride_align;
    void *ptr = FUNC1(p, alloc_size);
    if (!ptr)
        return NULL;

    // (we expect vo.c to proxy the free callback, so it happens in the same
    // thread it was allocated in, removing the need for synchronization)
    struct mp_image *res = FUNC3(imgfmt, w, h, stride_align,
                                                ptr, alloc_size, p,
                                                gl_video_dr_free_buffer);
    if (!res)
        FUNC2(p, ptr);
    return res;
}