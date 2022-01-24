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
typedef  int /*<<< orphan*/  uint8_t ;
struct mp_chmap {scalar_t__* speaker; } ;
struct mp_aframe {int dummy; } ;

/* Variables and functions */
 int MP_NUM_CHANNELS ; 
 scalar_t__ MP_SPEAKER_ID_NA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ ** FUNC2 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_aframe*) ; 
 int FUNC4 (struct mp_aframe*) ; 
 int FUNC5 (struct mp_aframe*) ; 
 int FUNC6 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_aframe*,struct mp_chmap*) ; 

__attribute__((used)) static bool FUNC8(struct mp_aframe *mpa, int *reorder,
                           struct mp_chmap *newmap)
{
    if (!FUNC7(mpa, newmap))
        return false;

    int num_planes = FUNC4(mpa);
    uint8_t **planes = FUNC2(mpa);
    uint8_t *old_planes[MP_NUM_CHANNELS];
    FUNC1(num_planes <= MP_NUM_CHANNELS);
    for (int n = 0; n < num_planes; n++)
        old_planes[n] = planes[n];

    int next_na = 0;
    for (int n = 0; n < num_planes; n++)
        next_na += newmap->speaker[n] != MP_SPEAKER_ID_NA;

    for (int n = 0; n < num_planes; n++) {
        int src = reorder[n];
        FUNC1(src >= -1 && src < num_planes);
        if (src >= 0) {
            planes[n] = old_planes[src];
        } else {
            FUNC1(next_na < num_planes);
            planes[n] = old_planes[next_na++];
            // The NA planes were never written by avrctx, so clear them.
            FUNC0(planes[n],
                            FUNC6(mpa) * FUNC5(mpa),
                            FUNC3(mpa));
        }
    }

    return true;
}