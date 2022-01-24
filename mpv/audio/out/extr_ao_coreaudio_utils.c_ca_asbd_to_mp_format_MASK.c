#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mChannelsPerFrame; int /*<<< orphan*/  mSampleRate; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ AudioStreamBasicDescription ;

/* Variables and functions */
 int AF_FORMAT_COUNT ; 
 int AF_FORMAT_S_AC3 ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(const AudioStreamBasicDescription *asbd)
{
    for (int fmt = 1; fmt < AF_FORMAT_COUNT; fmt++) {
        AudioStreamBasicDescription mp_asbd = {0};
        FUNC2(&mp_asbd, fmt, asbd->mSampleRate, asbd->mChannelsPerFrame);
        if (FUNC1(&mp_asbd, asbd))
            return FUNC0(fmt) ? AF_FORMAT_S_AC3 : fmt;
    }
    return 0;
}