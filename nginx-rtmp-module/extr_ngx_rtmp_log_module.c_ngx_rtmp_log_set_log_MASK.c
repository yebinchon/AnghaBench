#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_22__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_4__ ngx_str_t ;
struct TYPE_23__ {TYPE_7__* format; int /*<<< orphan*/ * file; } ;
typedef  TYPE_5__ ngx_rtmp_log_t ;
struct TYPE_20__ {scalar_t__ nelts; TYPE_7__* elts; } ;
struct TYPE_24__ {int combined_used; TYPE_2__ formats; } ;
typedef  TYPE_6__ ngx_rtmp_log_main_conf_t ;
struct TYPE_21__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_25__ {TYPE_3__ name; } ;
typedef  TYPE_7__ ngx_rtmp_log_fmt_t ;
struct TYPE_26__ {int off; int /*<<< orphan*/ * logs; } ;
typedef  TYPE_8__ ngx_rtmp_log_app_conf_t ;
struct TYPE_27__ {TYPE_1__* args; int /*<<< orphan*/  cycle; int /*<<< orphan*/  pool; } ;
typedef  TYPE_9__ ngx_conf_t ;
typedef  int /*<<< orphan*/  ngx_command_t ;
struct TYPE_19__ {int nelts; TYPE_4__* elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_LOG_WARN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ,char*,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int) ; 
 TYPE_6__* FUNC5 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_log_module ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static char *
FUNC9(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_rtmp_log_app_conf_t    *lacf = conf;

    ngx_rtmp_log_main_conf_t   *lmcf;
    ngx_rtmp_log_fmt_t         *fmt;
    ngx_rtmp_log_t             *log;
    ngx_str_t                  *value, name;
    ngx_uint_t                  n;

    value = cf->args->elts;

    if (FUNC7(value[1].data, "off") == 0) {
        lacf->off = 1;
        return NGX_CONF_OK;
    }

    if (lacf->logs == NULL) {
        lacf->logs = FUNC0(cf->pool, 2, sizeof(ngx_rtmp_log_t));
        if (lacf->logs == NULL) {
            return NGX_CONF_ERROR;
        }
    }

    log = FUNC1(lacf->logs);
    if (log == NULL) {
        return NGX_CONF_ERROR;
    }

    FUNC4(log, sizeof(*log));

    lmcf = FUNC5(cf, ngx_rtmp_log_module);

    log->file = FUNC3(cf->cycle, &value[1]);
    if (log->file == NULL) {
        return NGX_CONF_ERROR;
    }

    if (cf->args->nelts == 2) {
        FUNC6(&name, "combined");
        lmcf->combined_used = 1;

    } else {
        name = value[2];
        if (FUNC7(name.data, "combined") == 0) {
            lmcf->combined_used = 1;
        }
    }

    fmt = lmcf->formats.elts;
    for (n = 0; n < lmcf->formats.nelts; ++n, ++fmt) {
        if (fmt->name.len == name.len &&
            FUNC8(fmt->name.data, name.data, name.len) == 0)
        {
            log->format = fmt;
            break;
        }
    }

    if (log->format == NULL) {
        FUNC2(NGX_LOG_WARN, cf, 0, "unknown log format \"%V\"",
                           &name);
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}