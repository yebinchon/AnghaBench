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
struct ra_ctx {int dummy; } ;
struct TYPE_3__ {int cbSize; } ;
typedef  TYPE_1__ DWM_TIMING_INFO ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct ra_ctx *ctx)
{
    // For Windows 7.
    BOOL enabled = 0;
    if (FUNC2(FUNC1(&enabled)) || !enabled)
        return false;

    // This works at least on Windows 8.1: it returns an error in fullscreen,
    // which is also when we get consistent timings without DwmFlush. Might
    // be cargo-cult.
    DWM_TIMING_INFO info = { .cbSize = sizeof(DWM_TIMING_INFO) };
    if (FUNC2(FUNC0(0, &info)))
        return false;

    return true;
}