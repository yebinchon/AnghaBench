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
struct TYPE_3__ {int /*<<< orphan*/  rec; scalar_t__ flags; int /*<<< orphan*/  url; int /*<<< orphan*/  interval; int /*<<< orphan*/  notify; int /*<<< orphan*/  lock_file; int /*<<< orphan*/  append; int /*<<< orphan*/  unique; int /*<<< orphan*/  max_frames; int /*<<< orphan*/  max_size; int /*<<< orphan*/  suffix; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ ngx_rtmp_record_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_msec_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 scalar_t__ NGX_CONF_UNSET ; 
 TYPE_1__** FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC7(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_rtmp_record_app_conf_t     *prev = parent;
    ngx_rtmp_record_app_conf_t     *conf = child;
    ngx_rtmp_record_app_conf_t    **rracf;

    FUNC5(conf->path, prev->path, "");
    FUNC5(conf->suffix, prev->suffix, ".flv");
    FUNC4(conf->max_size, prev->max_size, 0);
    FUNC4(conf->max_frames, prev->max_frames, 0);
    FUNC6(conf->unique, prev->unique, 0);
    FUNC6(conf->append, prev->append, 0);
    FUNC6(conf->lock_file, prev->lock_file, 0);
    FUNC6(conf->notify, prev->notify, 0);
    FUNC2(conf->interval, prev->interval,
                              (ngx_msec_t) NGX_CONF_UNSET);
    FUNC1(conf->flags, prev->flags, 0);
    FUNC3(conf->url, prev->url, NULL);

    if (conf->flags) {
        rracf = FUNC0(&conf->rec);
        if (rracf == NULL) {
            return NGX_CONF_ERROR;
        }

        *rracf = conf;
    }

    return NGX_CONF_OK;
}