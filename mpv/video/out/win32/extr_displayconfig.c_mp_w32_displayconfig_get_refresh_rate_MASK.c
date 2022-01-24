#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_9__ {scalar_t__ Denominator; scalar_t__ Numerator; } ;
struct TYPE_7__ {size_t modeInfoIdx; TYPE_3__ refreshRate; } ;
struct TYPE_8__ {TYPE_1__ targetInfo; } ;
typedef  TYPE_2__ DISPLAYCONFIG_PATH_INFO ;
typedef  int /*<<< orphan*/  DISPLAYCONFIG_MODE_INFO ;

/* Variables and functions */
 size_t DISPLAYCONFIG_PATH_MODE_IDX_INVALID ; 
 int /*<<< orphan*/  displayconfig_load ; 
 int /*<<< orphan*/  displayconfig_load_ran ; 
 int /*<<< orphan*/  displayconfig_loaded ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/  const*) ; 
 double FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 

double FUNC7(const wchar_t *device)
{
    // Load Windows 7 DisplayConfig API
    FUNC4(&displayconfig_load_ran, displayconfig_load);
    if (!displayconfig_loaded)
        return 0.0;

    void *ctx = FUNC6(NULL);
    double freq = 0.0;

    // Get the current display configuration
    UINT32 num_paths;
    DISPLAYCONFIG_PATH_INFO* paths;
    UINT32 num_modes;
    DISPLAYCONFIG_MODE_INFO* modes;
    if (FUNC0(ctx, &num_paths, &paths, &num_modes, &modes))
        goto end;

    // Get the path for the specified monitor
    DISPLAYCONFIG_PATH_INFO* path;
    if (!(path = FUNC1(num_paths, paths, device)))
        goto end;

    // Try getting the refresh rate from the mode first. The value in the mode
    // overrides the value in the path.
    if (path->targetInfo.modeInfoIdx != DISPLAYCONFIG_PATH_MODE_IDX_INVALID)
        freq = FUNC2(&modes[path->targetInfo.modeInfoIdx]);

    // If the mode didn't contain a valid refresh rate, try the path
    if (freq == 0.0 && FUNC3(path->targetInfo.refreshRate)) {
        freq = ((double)path->targetInfo.refreshRate.Numerator) /
               ((double)path->targetInfo.refreshRate.Denominator);
    }

end:
    FUNC5(ctx);
    return freq;
}