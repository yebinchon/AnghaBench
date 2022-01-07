
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int data; int len; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_12__ {int len; int * data; } ;
struct TYPE_8__ {int nelts; TYPE_2__* elts; } ;
struct TYPE_10__ {TYPE_7__ passwd; TYPE_1__ args; } ;
typedef TYPE_3__ ngx_mail_session_t ;
typedef int ngx_int_t ;
struct TYPE_11__ {int log; int pool; } ;
typedef TYPE_4__ ngx_connection_t ;


 int NGX_DONE ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_MAIL ;
 int NGX_MAIL_PARSE_INVALID_COMMAND ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_7__*) ;
 int ngx_memcpy (int *,int ,int ) ;
 int * ngx_pnalloc (int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_mail_pop3_pass(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_str_t *arg;

    if (s->args.nelts != 1) {
        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }

    arg = s->args.elts;
    s->passwd.len = arg[0].len;
    s->passwd.data = ngx_pnalloc(c->pool, s->passwd.len);
    if (s->passwd.data == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(s->passwd.data, arg[0].data, s->passwd.len);






    return NGX_DONE;
}
