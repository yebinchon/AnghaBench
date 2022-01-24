#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  void* ngx_str_t ;
struct TYPE_13__ {void* value; void* key; } ;
typedef  TYPE_2__ ngx_keyval_t ;
struct TYPE_14__ {TYPE_1__* args; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ ngx_conf_t ;
struct TYPE_15__ {char* (* post_handler ) (TYPE_3__*,TYPE_4__*,TYPE_2__*) ;} ;
typedef  TYPE_4__ ngx_conf_post_t ;
struct TYPE_16__ {int offset; TYPE_4__* post; } ;
typedef  TYPE_5__ ngx_command_t ;
typedef  int /*<<< orphan*/  ngx_array_t ;
struct TYPE_12__ {void** elts; } ;

/* Variables and functions */
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (TYPE_3__*,TYPE_4__*,TYPE_2__*) ; 

char *
FUNC3(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char  *p = conf;

    ngx_str_t         *value;
    ngx_array_t      **a;
    ngx_keyval_t      *kv;
    ngx_conf_post_t   *post;

    a = (ngx_array_t **) (p + cmd->offset);

    if (*a == NULL) {
        *a = FUNC0(cf->pool, 4, sizeof(ngx_keyval_t));
        if (*a == NULL) {
            return NGX_CONF_ERROR;
        }
    }

    kv = FUNC1(*a);
    if (kv == NULL) {
        return NGX_CONF_ERROR;
    }

    value = cf->args->elts;

    kv->key = value[1];
    kv->value = value[2];

    if (cmd->post) {
        post = cmd->post;
        return post->post_handler(cf, post, kv);
    }

    return NGX_CONF_OK;
}