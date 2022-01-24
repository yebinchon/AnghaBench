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
struct tl_part {double offset; double length; int /*<<< orphan*/  offset_set; scalar_t__ chapter_ts; } ;
struct demuxer {double start_time; } ;

/* Variables and functions */
 double FUNC0 (struct demuxer*,double) ; 

__attribute__((used)) static void FUNC1(struct tl_part *part, struct demuxer *demuxer)
{
    if (part->chapter_ts) {
        double start = FUNC0(demuxer, part->offset);
        double length = part->length;
        double end = length;
        if (end >= 0)
            end = FUNC0(demuxer, part->offset + part->length);
        if (end >= 0 && start >= 0)
            length = end - start;
        part->offset = start;
        part->length = length;
    }
    if (!part->offset_set)
        part->offset = demuxer->start_time;
}