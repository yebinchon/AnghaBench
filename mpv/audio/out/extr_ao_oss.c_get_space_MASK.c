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
struct priv {scalar_t__ audio_fd; int outburst; scalar_t__ device_failed; } ;
struct ao {int sstride; struct priv* priv; } ;
struct TYPE_3__ {int fragments; int fragsize; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ audio_buf_info ;

/* Variables and functions */
 int /*<<< orphan*/  SNDCTL_DSP_GETOSPACE ; 
 scalar_t__ FUNC0 (struct ao*) ; 
 double FUNC1 (struct ao*) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct ao *ao)
{
    struct priv *p = ao->priv;

    audio_buf_info zz = {0};
    if (FUNC2(p->audio_fd, SNDCTL_DSP_GETOSPACE, &zz) != -1) {
        // calculate exact buffer space:
        return zz.fragments * zz.fragsize / ao->sstride;
    }

    if (p->audio_fd < 0 && p->device_failed && FUNC1(ao) > 0.2)
        return 0;

    if (p->audio_fd < 0 || FUNC0(ao) > 0)
        return p->outburst / ao->sstride;

    return 0;
}