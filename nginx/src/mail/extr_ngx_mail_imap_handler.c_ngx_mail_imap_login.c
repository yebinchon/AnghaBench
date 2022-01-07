
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_14__ {scalar_t__ len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_17__ {scalar_t__ len; int * data; } ;
struct TYPE_12__ {scalar_t__ len; int * data; } ;
struct TYPE_13__ {int nelts; TYPE_2__* elts; } ;
struct TYPE_15__ {TYPE_9__ login; TYPE_10__ passwd; TYPE_1__ args; } ;
typedef TYPE_3__ ngx_mail_session_t ;
typedef int ngx_int_t ;
struct TYPE_16__ {int log; int pool; } ;
typedef TYPE_4__ ngx_connection_t ;


 int NGX_DONE ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_MAIL ;
 int NGX_MAIL_PARSE_INVALID_COMMAND ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_9__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_9__*,TYPE_10__*) ;
 scalar_t__ ngx_mail_starttls_only (TYPE_3__*,TYPE_4__*) ;
 int ngx_memcpy (int *,int ,scalar_t__) ;
 void* ngx_pnalloc (int ,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_mail_imap_login(ngx_mail_session_t *s, ngx_connection_t *c)
{
    ngx_str_t *arg;







    arg = s->args.elts;

    if (s->args.nelts != 2 || arg[0].len == 0) {
        return NGX_MAIL_PARSE_INVALID_COMMAND;
    }

    s->login.len = arg[0].len;
    s->login.data = ngx_pnalloc(c->pool, s->login.len);
    if (s->login.data == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(s->login.data, arg[0].data, s->login.len);

    s->passwd.len = arg[1].len;
    s->passwd.data = ngx_pnalloc(c->pool, s->passwd.len);
    if (s->passwd.data == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_memcpy(s->passwd.data, arg[1].data, s->passwd.len);






    ngx_log_debug1(NGX_LOG_DEBUG_MAIL, c->log, 0,
                   "imap login:\"%V\"", &s->login);


    return NGX_DONE;
}
