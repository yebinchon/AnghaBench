
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int (* remove_session_cb ) (TYPE_5__*,TYPE_2__*) ;} ;
struct TYPE_12__ {scalar_t__ time; scalar_t__ timeout; int not_resumable; } ;
struct TYPE_11__ {scalar_t__ time; TYPE_5__* ctx; int cache; } ;
typedef TYPE_1__ TIMEOUT_PARAM ;
typedef TYPE_2__ SSL_SESSION ;


 int SSL_SESSION_free (TYPE_2__*) ;
 int SSL_SESSION_list_remove (TYPE_5__*,TYPE_2__*) ;
 int lh_SSL_SESSION_delete (int ,TYPE_2__*) ;
 int stub1 (TYPE_5__*,TYPE_2__*) ;

__attribute__((used)) static void timeout_cb(SSL_SESSION *s, TIMEOUT_PARAM *p)
{
    if ((p->time == 0) || (p->time > (s->time + s->timeout))) {




        (void)lh_SSL_SESSION_delete(p->cache, s);
        SSL_SESSION_list_remove(p->ctx, s);
        s->not_resumable = 1;
        if (p->ctx->remove_session_cb != ((void*)0))
            p->ctx->remove_session_cb(p->ctx, s);
        SSL_SESSION_free(s);
    }
}
