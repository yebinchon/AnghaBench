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
struct priv {int audio_fd; } ;
struct ao {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDCTL_DSP_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct ao *ao)
{
#ifdef SNDCTL_DSP_SYNC
    struct priv *p = ao->priv;
    // to get the buffer played
    if (p->audio_fd != -1)
        ioctl(p->audio_fd, SNDCTL_DSP_SYNC, NULL);
#endif
}