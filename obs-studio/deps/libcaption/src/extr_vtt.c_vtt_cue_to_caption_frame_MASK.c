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
typedef  int /*<<< orphan*/  vtt_block_t ;
typedef  int /*<<< orphan*/  caption_frame_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(vtt_block_t* cue, caption_frame_t* frame)
{
    const char* data = FUNC1(cue);
    return FUNC0(frame, data);
}