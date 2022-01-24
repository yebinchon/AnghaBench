#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {void* favorDecSpeed; void* autoFlush; scalar_t__ compressionLevel; int /*<<< orphan*/  frameInfo; } ;
typedef  TYPE_1__ LZ4F_preferences_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ LZ4F_INIT_PREFERENCES ; 
 int LZ4HC_CLEVEL_MAX ; 

LZ4F_preferences_t FUNC2(uint32_t* seed)
{
    LZ4F_preferences_t prefs = LZ4F_INIT_PREFERENCES;
    prefs.frameInfo = FUNC1(seed);
    prefs.compressionLevel = FUNC0(seed, 0, LZ4HC_CLEVEL_MAX + 3) - 3;
    prefs.autoFlush = FUNC0(seed, 0, 1);
    prefs.favorDecSpeed = FUNC0(seed, 0, 1);
    return prefs;
}