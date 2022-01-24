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
 int AFMT_AC3 ; 
 int /*<<< orphan*/  FUNC0 (struct ao*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNDCTL_DSP_SETFMT ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static bool FUNC8(struct ao *ao, int *format)
{
    struct priv *p = ao->priv;

    int oss_format = FUNC5(*format);
    if (oss_format == -1 && FUNC3(*format))
        oss_format = AFMT_AC3;

    if (oss_format == -1) {
        FUNC1(ao, "Unknown/not supported internal format: %s\n",
                   FUNC4(*format));
        *format = 0;
        return false;
    }

    int actual_format = oss_format;
    if (FUNC6(p->audio_fd, SNDCTL_DSP_SETFMT, &actual_format) < 0)
        actual_format = -1;

    if (actual_format == oss_format)
        return true;

    FUNC2(ao, "Can't set audio device to %s output.\n", FUNC4(*format));
    *format = FUNC7(actual_format);
    if (actual_format != -1 && !*format)
        FUNC0(ao, "Unknown/Unsupported OSS format: 0x%x.\n", actual_format);
    return false;
}