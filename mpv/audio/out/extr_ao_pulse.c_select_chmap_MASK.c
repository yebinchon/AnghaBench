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
struct mp_chmap_sel {int /*<<< orphan*/  member_0; } ;
struct ao {int /*<<< orphan*/  channels; } ;
typedef  int /*<<< orphan*/  pa_channel_map ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ao*,struct mp_chmap_sel*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_chmap_sel*,int) ; 
 int** speaker_map ; 

__attribute__((used)) static bool FUNC3(struct ao *ao, pa_channel_map *dst)
{
    struct mp_chmap_sel sel = {0};
    for (int n = 0; speaker_map[n][1] != -1; n++)
        FUNC2(&sel, speaker_map[n][1]);
    return FUNC0(ao, &sel, &ao->channels) &&
           FUNC1(dst, &ao->channels);
}