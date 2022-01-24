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
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  log; int /*<<< orphan*/  handle; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ ngx_shm_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,...) ; 

void
FUNC3(ngx_shm_t *shm)
{
    if (FUNC1(shm->addr) == 0) {
        FUNC2(NGX_LOG_ALERT, shm->log, ngx_errno,
                      "UnmapViewOfFile(%p) of file mapping \"%V\" failed",
                      &shm->addr, &shm->name);
    }

    if (FUNC0(shm->handle) == 0) {
        FUNC2(NGX_LOG_ALERT, shm->log, ngx_errno,
                      "CloseHandle() of file mapping \"%V\" failed",
                      &shm->name);
    }
}