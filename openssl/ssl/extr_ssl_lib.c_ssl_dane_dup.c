
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int dlen; int data; int mtype; int selector; int usage; } ;
typedef TYPE_2__ danetls_record ;
struct TYPE_13__ {int * trecs; int * dctx; int flags; } ;
struct TYPE_12__ {TYPE_7__ dane; TYPE_1__* ctx; } ;
struct TYPE_10__ {int dane; } ;
typedef TYPE_3__ SSL ;


 int DANETLS_ENABLED (TYPE_7__*) ;
 int ERR_R_MALLOC_FAILURE ;
 int SSL_F_SSL_DANE_DUP ;
 scalar_t__ SSL_dane_tlsa_add (TYPE_3__*,int ,int ,int ,int ,int ) ;
 int SSLerr (int ,int ) ;
 int dane_final (TYPE_7__*) ;
 int * sk_danetls_record_new_reserve (int *,int) ;
 int sk_danetls_record_num (int *) ;
 TYPE_2__* sk_danetls_record_value (int *,int) ;

__attribute__((used)) static int ssl_dane_dup(SSL *to, SSL *from)
{
    int num;
    int i;

    if (!DANETLS_ENABLED(&from->dane))
        return 1;

    num = sk_danetls_record_num(from->dane.trecs);
    dane_final(&to->dane);
    to->dane.flags = from->dane.flags;
    to->dane.dctx = &to->ctx->dane;
    to->dane.trecs = sk_danetls_record_new_reserve(((void*)0), num);

    if (to->dane.trecs == ((void*)0)) {
        SSLerr(SSL_F_SSL_DANE_DUP, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    for (i = 0; i < num; ++i) {
        danetls_record *t = sk_danetls_record_value(from->dane.trecs, i);

        if (SSL_dane_tlsa_add(to, t->usage, t->selector, t->mtype,
                              t->data, t->dlen) <= 0)
            return 0;
    }
    return 1;
}
