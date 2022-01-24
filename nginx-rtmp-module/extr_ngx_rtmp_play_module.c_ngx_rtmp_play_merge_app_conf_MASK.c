#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_rtmp_play_entry_t ;
struct TYPE_7__ {scalar_t__ nelts; int /*<<< orphan*/  elts; } ;
struct TYPE_5__ {int nbuckets; int /*<<< orphan*/ * ctx; TYPE_4__ entries; int /*<<< orphan*/  local_path; int /*<<< orphan*/  temp_path; } ;
typedef  TYPE_1__ ngx_rtmp_play_app_conf_t ;
struct TYPE_6__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/ ** FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static char *
FUNC4(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_play_app_conf_t *prev = parent;
    ngx_rtmp_play_app_conf_t *conf = child;
    ngx_rtmp_play_entry_t   **ppe;

    FUNC1(conf->temp_path, prev->temp_path, "/tmp");
    FUNC1(conf->local_path, prev->local_path, "");

    if (prev->entries.nelts == 0) {
        goto done;
    }

    if (conf->entries.nelts == 0) {
        conf->entries = prev->entries;
        goto done;
    }

    ppe = FUNC0(&conf->entries, prev->entries.nelts);
    if (ppe == NULL) {
        return NGX_CONF_ERROR;
    }

    FUNC2(ppe, prev->entries.elts, prev->entries.nelts * sizeof(void *));

done:

    if (conf->entries.nelts == 0) {
        return NGX_CONF_OK;
    }

    conf->ctx = FUNC3(cf->pool, sizeof(void *) * conf->nbuckets);
    if (conf->ctx == NULL) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}