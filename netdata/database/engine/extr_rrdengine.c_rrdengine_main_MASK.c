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
struct rrdengine_instance {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RRDENG_MIN_DISK_SPACE_MB ; 
 int /*<<< orphan*/  RRDENG_MIN_PAGE_CACHE_SIZE_MB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rrdengine_instance*) ; 
 int FUNC3 (struct rrdengine_instance**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4(void)
{
    int ret;
    struct rrdengine_instance *ctx;

    ret = FUNC3(&ctx, "/tmp", RRDENG_MIN_PAGE_CACHE_SIZE_MB, RRDENG_MIN_DISK_SPACE_MB);
    if (ret) {
        FUNC0(ret);
    }
    FUNC2(ctx);
    FUNC1(stderr, "Hello world!");
    FUNC0(0);
}