#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_14__ {int min_shift; int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; struct TYPE_14__* addr; struct TYPE_14__* end; } ;
typedef  TYPE_1__ ngx_slab_pool_t ;
struct TYPE_18__ {scalar_t__ len; } ;
struct TYPE_19__ {int size; TYPE_5__ name; TYPE_1__* addr; scalar_t__ exists; } ;
struct TYPE_15__ {TYPE_7__ shm; } ;
typedef  TYPE_2__ ngx_shm_zone_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_17__ {scalar_t__ len; } ;
struct TYPE_16__ {TYPE_4__ lock_file; int /*<<< orphan*/  pool; int /*<<< orphan*/  log; } ;
typedef  TYPE_3__ ngx_cycle_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_5__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_7__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,TYPE_4__*,TYPE_5__*) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_cycle_t *cycle, ngx_shm_zone_t *zn)
{
    u_char           *file;
    ngx_slab_pool_t  *sp;

    sp = (ngx_slab_pool_t *) zn->shm.addr;

    if (zn->shm.exists) {

        if (sp == sp->addr) {
            return NGX_OK;
        }

#if (NGX_WIN32)

        /* remap at the required address */

        if (ngx_shm_remap(&zn->shm, sp->addr) != NGX_OK) {
            return NGX_ERROR;
        }

        sp = (ngx_slab_pool_t *) zn->shm.addr;

        if (sp == sp->addr) {
            return NGX_OK;
        }

#endif

        FUNC0(NGX_LOG_EMERG, cycle->log, 0,
                      "shared zone \"%V\" has no equal addresses: %p vs %p",
                      &zn->shm.name, sp->addr, sp);
        return NGX_ERROR;
    }

    sp->end = zn->shm.addr + zn->shm.size;
    sp->min_shift = 3;
    sp->addr = zn->shm.addr;

#if (NGX_HAVE_ATOMIC_OPS)

    file = NULL;

#else

    file = FUNC1(cycle->pool,
                       cycle->lock_file.len + zn->shm.name.len + 1);
    if (file == NULL) {
        return NGX_ERROR;
    }

    (void) FUNC5(file, "%V%V%Z", &cycle->lock_file, &zn->shm.name);

#endif

    if (FUNC3(&sp->mutex, &sp->lock, file) != NGX_OK) {
        return NGX_ERROR;
    }

    FUNC4(sp);

    return NGX_OK;
}