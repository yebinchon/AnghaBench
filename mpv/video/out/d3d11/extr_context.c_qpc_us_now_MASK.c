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
struct ra_swapchain {int dummy; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int /*<<< orphan*/  QuadPart; } ;
typedef  TYPE_1__ LARGE_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_swapchain*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64_t FUNC2(struct ra_swapchain *sw)
{
    LARGE_INTEGER perf_count;
    FUNC0(&perf_count);
    return FUNC1(sw, perf_count.QuadPart);
}