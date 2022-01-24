#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int num_tracks; TYPE_5__** tracks; } ;
typedef  TYPE_1__ mkv_demuxer_t ;
struct TYPE_11__ {scalar_t__ priv; } ;
typedef  TYPE_2__ demuxer_t ;
struct TYPE_12__ {int type; } ;

/* Variables and functions */
#define  MATROSKA_TRACK_AUDIO 130 
#define  MATROSKA_TRACK_SUBTITLE 129 
#define  MATROSKA_TRACK_VIDEO 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_5__*) ; 

__attribute__((used)) static void FUNC3(demuxer_t *demuxer)
{
    mkv_demuxer_t *mkv_d = (mkv_demuxer_t *) demuxer->priv;

    for (int i = 0; i < mkv_d->num_tracks; i++) {
        switch (mkv_d->tracks[i]->type) {
        case MATROSKA_TRACK_VIDEO:
            FUNC2(demuxer, mkv_d->tracks[i]);
            break;
        case MATROSKA_TRACK_AUDIO:
            FUNC0(demuxer, mkv_d->tracks[i]);
            break;
        case MATROSKA_TRACK_SUBTITLE:
            FUNC1(demuxer, mkv_d->tracks[i]);
            break;
        }
    }
}