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
struct osd_state {int dummy; } ;
struct osd_object {int /*<<< orphan*/  vo_res; } ;
struct ass_state {int /*<<< orphan*/  library; TYPE_1__* track; } ;
struct TYPE_3__ {int Timer; int WrapStyle; int Kerning; int /*<<< orphan*/  track_type; } ;
typedef  TYPE_1__ ASS_Track ;

/* Variables and functions */
 int /*<<< orphan*/  TRACK_TYPE_ASS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct osd_state*,struct ass_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct ass_state*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct osd_state *osd, struct osd_object *obj,
                             struct ass_state *ass)
{
    FUNC1(osd, ass);

    ASS_Track *track = ass->track;
    if (!track)
        track = ass->track = FUNC0(ass->library);

    track->track_type = TRACK_TYPE_ASS;
    track->Timer = 100.;
    track->WrapStyle = 1; // end-of-line wrapping instead of smart wrapping
    track->Kerning = true;

    FUNC2(ass, &obj->vo_res);
}