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
struct mp_log {int dummy; } ;
struct mp_chmap_sel {int num_chmaps; scalar_t__ allow_any; scalar_t__ allow_waveext; int /*<<< orphan*/ * speakers; int /*<<< orphan*/ * chmaps; } ;
struct mp_chmap {int num; int /*<<< orphan*/  speaker; } ;

/* Variables and functions */
 int MP_SPEAKER_ID_COUNT ; 
 int MP_SPEAKER_ID_FC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_log*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_log*,int) ; 

void FUNC4(const struct mp_chmap_sel *s, struct mp_log *log, int lev)
{
    if (!FUNC3(log, lev))
        return;

    for (int i = 0; i < s->num_chmaps; i++)
        FUNC2(log, lev, " - %s\n", FUNC0(&s->chmaps[i]));
    for (int i = 0; i < MP_SPEAKER_ID_COUNT; i++) {
        if (!s->speakers[i])
            continue;
        struct mp_chmap l = {.num = 1, .speaker = i };
        FUNC2(log, lev, " - #%s\n",
                    i == MP_SPEAKER_ID_FC ? "fc" : FUNC1(&l));
    }
    if (s->allow_waveext)
        FUNC2(log, lev, " - waveext\n");
    if (s->allow_any)
        FUNC2(log, lev, " - anything\n");
}