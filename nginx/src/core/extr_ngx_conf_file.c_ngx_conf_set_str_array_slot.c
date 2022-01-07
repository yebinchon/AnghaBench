
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_str_t ;
struct TYPE_10__ {TYPE_1__* args; int pool; } ;
typedef TYPE_2__ ngx_conf_t ;
struct TYPE_11__ {char* (* post_handler ) (TYPE_2__*,TYPE_3__*,int *) ;} ;
typedef TYPE_3__ ngx_conf_post_t ;
struct TYPE_12__ {int offset; TYPE_3__* post; } ;
typedef TYPE_4__ ngx_command_t ;
typedef int ngx_array_t ;
struct TYPE_9__ {int * elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int * NGX_CONF_UNSET_PTR ;
 int * ngx_array_create (int ,int,int) ;
 int * ngx_array_push (int *) ;
 char* stub1 (TYPE_2__*,TYPE_3__*,int *) ;

char *
ngx_conf_set_str_array_slot(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    char *p = conf;

    ngx_str_t *value, *s;
    ngx_array_t **a;
    ngx_conf_post_t *post;

    a = (ngx_array_t **) (p + cmd->offset);

    if (*a == NGX_CONF_UNSET_PTR) {
        *a = ngx_array_create(cf->pool, 4, sizeof(ngx_str_t));
        if (*a == ((void*)0)) {
            return NGX_CONF_ERROR;
        }
    }

    s = ngx_array_push(*a);
    if (s == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    value = cf->args->elts;

    *s = value[1];

    if (cmd->post) {
        post = cmd->post;
        return post->post_handler(cf, post, s);
    }

    return NGX_CONF_OK;
}
