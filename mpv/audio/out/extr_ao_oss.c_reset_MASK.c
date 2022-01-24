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
struct priv {int /*<<< orphan*/  audio_fd; } ;
struct ao {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDCTL_DSP_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct ao*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ao *ao)
{
#if KEEP_DEVICE
    struct priv *p = ao->priv;
    ioctl(p->audio_fd, SNDCTL_DSP_RESET, NULL);
#else
    FUNC0(ao);
#endif
}