
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* session_cache_head; TYPE_1__* session_cache_tail; } ;
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ SSL_SESSION ;
typedef TYPE_2__ SSL_CTX ;



__attribute__((used)) static void SSL_SESSION_list_remove(SSL_CTX *ctx, SSL_SESSION *s)
{
    if ((s->next == ((void*)0)) || (s->prev == ((void*)0)))
        return;

    if (s->next == (SSL_SESSION *)&(ctx->session_cache_tail)) {

        if (s->prev == (SSL_SESSION *)&(ctx->session_cache_head)) {

            ctx->session_cache_head = ((void*)0);
            ctx->session_cache_tail = ((void*)0);
        } else {
            ctx->session_cache_tail = s->prev;
            s->prev->next = (SSL_SESSION *)&(ctx->session_cache_tail);
        }
    } else {
        if (s->prev == (SSL_SESSION *)&(ctx->session_cache_head)) {

            ctx->session_cache_head = s->next;
            s->next->prev = (SSL_SESSION *)&(ctx->session_cache_head);
        } else {

            s->next->prev = s->prev;
            s->prev->next = s->next;
        }
    }
    s->prev = s->next = ((void*)0);
}
