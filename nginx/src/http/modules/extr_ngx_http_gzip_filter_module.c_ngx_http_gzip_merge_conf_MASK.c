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
struct TYPE_2__ {int /*<<< orphan*/  types; int /*<<< orphan*/  types_keys; int /*<<< orphan*/  min_length; int /*<<< orphan*/  memlevel; int /*<<< orphan*/  wbits; int /*<<< orphan*/  level; int /*<<< orphan*/  postpone_gzipping; int /*<<< orphan*/  bufs; int /*<<< orphan*/  no_buffer; int /*<<< orphan*/  enable; } ;
typedef  TYPE_1__ ngx_http_gzip_conf_t ;
typedef  int /*<<< orphan*/  ngx_conf_t ;

/* Variables and functions */
 scalar_t__ MAX_MEM_LEVEL ; 
 scalar_t__ MAX_WBITS ; 
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ngx_http_html_default_types ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ngx_pagesize ; 

__attribute__((used)) static char *
FUNC4(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_gzip_conf_t *prev = parent;
    ngx_http_gzip_conf_t *conf = child;

    FUNC2(conf->enable, prev->enable, 0);
    FUNC2(conf->no_buffer, prev->no_buffer, 0);

    FUNC0(conf->bufs, prev->bufs,
                              (128 * 1024) / ngx_pagesize, ngx_pagesize);

    FUNC1(conf->postpone_gzipping, prev->postpone_gzipping,
                              0);
    FUNC2(conf->level, prev->level, 1);
    FUNC1(conf->wbits, prev->wbits, MAX_WBITS);
    FUNC1(conf->memlevel, prev->memlevel,
                              MAX_MEM_LEVEL - 1);
    FUNC2(conf->min_length, prev->min_length, 20);

    if (FUNC3(cf, &conf->types_keys, &conf->types,
                             &prev->types_keys, &prev->types,
                             ngx_http_html_default_types)
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}