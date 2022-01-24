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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  size; int /*<<< orphan*/  log; int /*<<< orphan*/ * addr; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ ngx_shm_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_MAP_WRITE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 

ngx_int_t
FUNC3(ngx_shm_t *shm, u_char *addr)
{
    if (FUNC1(shm->addr) == 0) {
        FUNC2(NGX_LOG_ALERT, shm->log, ngx_errno,
                      "UnmapViewOfFile(%p) of file mapping \"%V\" failed",
                      *shm->addr, &shm->name);
        return NGX_ERROR;
    }

    shm->addr = FUNC0(shm->handle, FILE_MAP_WRITE, 0, 0, 0, addr);

    if (shm->addr != NULL) {
        return NGX_OK;
    }

    FUNC2(NGX_LOG_ALERT, shm->log, ngx_errno,
                  "MapViewOfFileEx(%uz, %p) of file mapping \"%V\" failed",
                  shm->size, addr, &shm->name);

    return NGX_ERROR;
}