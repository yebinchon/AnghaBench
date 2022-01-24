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
struct priv {int /*<<< orphan*/  queue; } ;
struct mp_vdpau_mixer_frame {int dummy; } ;
struct mp_image {int /*<<< orphan*/ * planes; } ;
typedef  uintptr_t VdpVideoSurface ;

/* Variables and functions */
 uintptr_t VDP_INVALID_HANDLE ; 
 struct mp_image* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_vdpau_mixer_frame*,struct mp_image*) ; 

__attribute__((used)) static VdpVideoSurface FUNC3(struct priv *p,
                                 struct mp_vdpau_mixer_frame *frame, int pos)
{
    struct mp_image *mpi = FUNC0(FUNC1(p->queue, pos));
    if (!mpi)
        return VDP_INVALID_HANDLE;
    FUNC2(frame, mpi);
    return (uintptr_t)mpi->planes[3];
}