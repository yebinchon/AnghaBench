#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  size_t ngx_uint_t ;
struct TYPE_9__ {size_t len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_10__ {int /*<<< orphan*/  name; struct TYPE_10__* next; } ;
typedef  TYPE_2__ ngx_rtmp_live_stream_t ;
struct TYPE_11__ {size_t nbuckets; TYPE_2__** streams; } ;
typedef  TYPE_3__ ngx_rtmp_live_app_conf_t ;
struct TYPE_12__ {TYPE_3__** app_conf; } ;
typedef  TYPE_4__ ngx_rtmp_core_app_conf_t ;
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_13__ {size_t ctx_index; } ;

/* Variables and functions */
 char const* NGX_CONF_OK ; 
 scalar_t__ NGX_OK ; 
 size_t FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_5__ ngx_rtmp_live_module ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static const char *
FUNC5(ngx_http_request_t *r,
    ngx_rtmp_core_app_conf_t *cacf)
{
    size_t                     len;
    ngx_str_t                  name;
    const char                *s;
    ngx_uint_t                 n;
    ngx_rtmp_live_stream_t    *ls;
    ngx_rtmp_live_app_conf_t  *lacf;

    lacf = cacf->app_conf[ngx_rtmp_live_module.ctx_index];

    if (FUNC1(r, (u_char *) "name", sizeof("name") - 1, &name) != NGX_OK)
    {
        for (n = 0; n < (ngx_uint_t) lacf->nbuckets; ++n) {
            for (ls = lacf->streams[n]; ls; ls = ls->next) {
                s = FUNC2(r, ls);
                if (s != NGX_CONF_OK) {
                    return s;
                }
            }
        }

        return NGX_CONF_OK;
    }

    for (ls = lacf->streams[FUNC0(name.data, name.len) % lacf->nbuckets];
         ls; ls = ls->next) 
    {
        len = FUNC3(ls->name);
        if (name.len != len || FUNC4(name.data, ls->name, name.len)) {
            continue;
        }

        s = FUNC2(r, ls);
        if (s != NGX_CONF_OK) {
            return s;
        }
    }

    return NGX_CONF_OK;
}