
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t received_order; int type; scalar_t__ present; } ;
struct TYPE_6__ {TYPE_1__* clienthello; } ;
struct TYPE_5__ {size_t pre_proc_exts_len; TYPE_3__* pre_proc_exts; } ;
typedef TYPE_2__ SSL ;
typedef TYPE_3__ RAW_EXTENSION ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int*) ;
 int* OPENSSL_malloc (int) ;
 int SSL_F_SSL_CLIENT_HELLO_GET1_EXTENSIONS_PRESENT ;
 int SSLerr (int ,int ) ;

int SSL_client_hello_get1_extensions_present(SSL *s, int **out, size_t *outlen)
{
    RAW_EXTENSION *ext;
    int *present;
    size_t num = 0, i;

    if (s->clienthello == ((void*)0) || out == ((void*)0) || outlen == ((void*)0))
        return 0;
    for (i = 0; i < s->clienthello->pre_proc_exts_len; i++) {
        ext = s->clienthello->pre_proc_exts + i;
        if (ext->present)
            num++;
    }
    if (num == 0) {
        *out = ((void*)0);
        *outlen = 0;
        return 1;
    }
    if ((present = OPENSSL_malloc(sizeof(*present) * num)) == ((void*)0)) {
        SSLerr(SSL_F_SSL_CLIENT_HELLO_GET1_EXTENSIONS_PRESENT,
               ERR_R_MALLOC_FAILURE);
        return 0;
    }
    for (i = 0; i < s->clienthello->pre_proc_exts_len; i++) {
        ext = s->clienthello->pre_proc_exts + i;
        if (ext->present) {
            if (ext->received_order >= num)
                goto err;
            present[ext->received_order] = ext->type;
        }
    }
    *out = present;
    *outlen = num;
    return 1;
 err:
    OPENSSL_free(present);
    return 0;
}
