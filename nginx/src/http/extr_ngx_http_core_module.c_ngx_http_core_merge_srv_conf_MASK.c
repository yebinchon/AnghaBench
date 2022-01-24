#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_16__ {char* data; scalar_t__ len; } ;
typedef  TYPE_2__ ngx_str_t ;
struct TYPE_17__ {int /*<<< orphan*/ * regex; TYPE_2__ name; TYPE_4__* server; } ;
typedef  TYPE_3__ ngx_http_server_name_t ;
struct TYPE_15__ {int /*<<< orphan*/ * data; scalar_t__ len; } ;
struct TYPE_14__ {scalar_t__ nelts; TYPE_3__* elts; } ;
struct TYPE_20__ {scalar_t__ size; } ;
struct TYPE_18__ {scalar_t__ connection_pool_size; scalar_t__ request_pool_size; scalar_t__ client_header_buffer_size; TYPE_1__ server_name; TYPE_13__ server_names; int /*<<< orphan*/  underscores_in_headers; int /*<<< orphan*/  merge_slashes; int /*<<< orphan*/  ignore_invalid_headers; TYPE_9__ large_client_header_buffers; int /*<<< orphan*/  client_header_timeout; } ;
typedef  TYPE_4__ ngx_http_core_srv_conf_t ;
struct TYPE_19__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_5__ ngx_conf_t ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 TYPE_3__* FUNC0 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__,TYPE_9__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 

__attribute__((used)) static char *
FUNC8(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_http_core_srv_conf_t *prev = parent;
    ngx_http_core_srv_conf_t *conf = child;

    ngx_str_t                name;
    ngx_http_server_name_t  *sn;

    /* TODO: it does not merge, it inits only */

    FUNC4(conf->connection_pool_size,
                              prev->connection_pool_size, 64 * sizeof(void *));
    FUNC4(conf->request_pool_size,
                              prev->request_pool_size, 4096);
    FUNC3(conf->client_header_timeout,
                              prev->client_header_timeout, 60000);
    FUNC4(conf->client_header_buffer_size,
                              prev->client_header_buffer_size, 1024);
    FUNC2(conf->large_client_header_buffers,
                              prev->large_client_header_buffers,
                              4, 8192);

    if (conf->large_client_header_buffers.size < conf->connection_pool_size) {
        FUNC1(NGX_LOG_EMERG, cf, 0,
                           "the \"large_client_header_buffers\" size must be "
                           "equal to or greater than \"connection_pool_size\"");
        return NGX_CONF_ERROR;
    }

    FUNC5(conf->ignore_invalid_headers,
                              prev->ignore_invalid_headers, 1);

    FUNC5(conf->merge_slashes, prev->merge_slashes, 1);

    FUNC5(conf->underscores_in_headers,
                              prev->underscores_in_headers, 0);

    if (conf->server_names.nelts == 0) {
        /* the array has 4 empty preallocated elements, so push cannot fail */
        sn = FUNC0(&conf->server_names);
#if (NGX_PCRE)
        sn->regex = NULL;
#endif
        sn->server = conf;
        FUNC7(&sn->name, "");
    }

    sn = conf->server_names.elts;
    name = sn[0].name;

#if (NGX_PCRE)
    if (sn->regex) {
        name.len++;
        name.data--;
    } else
#endif

    if (name.data[0] == '.') {
        name.len--;
        name.data++;
    }

    conf->server_name.len = name.len;
    conf->server_name.data = FUNC6(cf->pool, &name);
    if (conf->server_name.data == NULL) {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}