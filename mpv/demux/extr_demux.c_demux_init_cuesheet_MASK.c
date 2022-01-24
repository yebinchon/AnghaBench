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
struct demuxer {TYPE_1__* chapters; int /*<<< orphan*/  num_chapters; int /*<<< orphan*/  metadata; } ;
struct cue_track {int /*<<< orphan*/  tags; int /*<<< orphan*/  start; } ;
struct cue_file {int num_tracks; struct cue_track* tracks; } ;
struct TYPE_2__ {int /*<<< orphan*/  metadata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct demuxer*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct demuxer*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct cue_file*) ; 
 struct cue_file* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cue_file*) ; 

__attribute__((used)) static void FUNC8(struct demuxer *demuxer)
{
    char *cue = FUNC5(demuxer->metadata, "cuesheet");
    if (cue && !demuxer->num_chapters) {
        struct cue_file *f = FUNC4(FUNC1(cue));
        if (f) {
            if (FUNC3(f) < 0) {
                FUNC0(demuxer, "Embedded cue sheet references more than one file. "
                        "Ignoring it.\n");
            } else {
                for (int n = 0; n < f->num_tracks; n++) {
                    struct cue_track *t = &f->tracks[n];
                    int idx = FUNC2(demuxer, "", t->start, -1);
                    FUNC6(demuxer->chapters[idx].metadata, t->tags);
                }
            }
        }
        FUNC7(f);
    }
}