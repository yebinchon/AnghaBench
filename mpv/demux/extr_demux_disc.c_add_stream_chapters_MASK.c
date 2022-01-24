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
struct demuxer {int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  STREAM_CTRL_GET_CHAPTER_TIME ; 
 int /*<<< orphan*/  STREAM_CTRL_GET_NUM_CHAPTERS ; 
 int /*<<< orphan*/  FUNC0 (struct demuxer*,char*,double,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC2(struct demuxer *demuxer)
{
    int num = 0;
    if (FUNC1(demuxer->stream, STREAM_CTRL_GET_NUM_CHAPTERS, &num) < 1)
        return;
    for (int n = 0; n < num; n++) {
        double p = n;
        if (FUNC1(demuxer->stream, STREAM_CTRL_GET_CHAPTER_TIME, &p) < 1)
            continue;
        FUNC0(demuxer, "", p, 0);
    }
}