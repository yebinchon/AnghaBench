#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  types; int /*<<< orphan*/  types_keys; int /*<<< orphan*/  value_len; int /*<<< orphan*/  min_file_chunk; int /*<<< orphan*/  last_modified; int /*<<< orphan*/  ignore_recycled_buffers; int /*<<< orphan*/  silent_errors; int /*<<< orphan*/  enable; } ;
typedef  TYPE_1__ ngx_http_ssi_loc_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_html_default_types ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC3(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_ssi_loc_conf_t *prev = parent;
    ngx_http_ssi_loc_conf_t *conf = child;

    FUNC1(conf->enable, prev->enable, 0);
    FUNC1(conf->silent_errors, prev->silent_errors, 0);
    FUNC1(conf->ignore_recycled_buffers,
                         prev->ignore_recycled_buffers, 0);
    FUNC1(conf->last_modified, prev->last_modified, 0);

    FUNC0(conf->min_file_chunk, prev->min_file_chunk, 1024);
    FUNC0(conf->value_len, prev->value_len, 255);

    if (FUNC2(cf, &conf->types_keys, &conf->types,
                             &prev->types_keys, &prev->types,
                             ngx_http_html_default_types)
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}