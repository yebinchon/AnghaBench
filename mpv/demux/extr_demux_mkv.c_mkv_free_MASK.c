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
struct mkv_demuxer {int num_tracks; int /*<<< orphan*/ * tracks; } ;
struct demuxer {struct mkv_demuxer* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct demuxer*) ; 

__attribute__((used)) static void FUNC2(struct demuxer *demuxer)
{
    struct mkv_demuxer *mkv_d = demuxer->priv;
    if (!mkv_d)
        return;
    FUNC1(demuxer);
    for (int i = 0; i < mkv_d->num_tracks; i++)
        FUNC0(mkv_d->tracks[i]);
}