#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ play_dir; int /*<<< orphan*/  fps; } ;
struct priv {TYPE_1__ public; int /*<<< orphan*/  fixed_format; int /*<<< orphan*/  last_format; } ;
struct mp_image {int /*<<< orphan*/  nominal_fps; int /*<<< orphan*/  params; } ;
struct mp_frame {scalar_t__ type; struct mp_image* data; } ;
struct mp_aframe {int /*<<< orphan*/  nominal_fps; int /*<<< orphan*/  params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct priv*,char*) ; 
 scalar_t__ MP_FRAME_AUDIO ; 
 scalar_t__ MP_FRAME_VIDEO ; 
 int /*<<< orphan*/  FUNC1 (struct priv*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC2 (struct priv*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC3 (struct priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct priv *p, struct mp_frame frame)
{
    if (frame.type == MP_FRAME_VIDEO) {
        struct mp_image *mpi = frame.data;

        FUNC2(p, mpi);

        if (!FUNC5(&p->last_format, &mpi->params))
            FUNC3(p, &mpi->params);

        mpi->params = p->fixed_format;
        mpi->nominal_fps = p->public.fps;
    } else if (frame.type == MP_FRAME_AUDIO) {
        struct mp_aframe *aframe = frame.data;

        if (p->public.play_dir < 0 && !FUNC4(aframe))
            FUNC0(p, "Couldn't reverse audio frame.\n");

        FUNC1(p, aframe);
    }
}