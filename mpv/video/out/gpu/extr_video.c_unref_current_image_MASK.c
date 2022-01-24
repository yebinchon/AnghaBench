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
struct video_image {int hwdec_mapped; int /*<<< orphan*/  mpi; scalar_t__ id; int /*<<< orphan*/  planes; } ;
struct gl_video {scalar_t__ hwdec_mapper; scalar_t__ hwdec_active; struct video_image image; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_video*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct gl_video *p)
{
    struct video_image *vimg = &p->image;

    if (vimg->hwdec_mapped) {
        FUNC0(p->hwdec_active && p->hwdec_mapper);
        FUNC4(p->hwdec_mapper);
        FUNC2(vimg->planes, 0, sizeof(vimg->planes));
        vimg->hwdec_mapped = false;
    }

    vimg->id = 0;

    FUNC3(&vimg->mpi);

    // While we're at it, also garbage collect pending fences in here to
    // get it out of the way.
    FUNC1(p, false);
}