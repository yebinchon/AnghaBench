
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t session_id_length; size_t master_key_length; int * master_key; int * session_id; } ;
typedef TYPE_1__ SSL_SESSION ;
typedef int BIO ;


 scalar_t__ BIO_printf (int *,char*,int ) ;
 scalar_t__ BIO_puts (int *,char*) ;

int SSL_SESSION_print_keylog(BIO *bp, const SSL_SESSION *x)
{
    size_t i;

    if (x == ((void*)0))
        goto err;
    if (x->session_id_length == 0 || x->master_key_length == 0)
        goto err;






    if (BIO_puts(bp, "RSA ") <= 0)
        goto err;

    if (BIO_puts(bp, "Session-ID:") <= 0)
        goto err;
    for (i = 0; i < x->session_id_length; i++) {
        if (BIO_printf(bp, "%02X", x->session_id[i]) <= 0)
            goto err;
    }
    if (BIO_puts(bp, " Master-Key:") <= 0)
        goto err;
    for (i = 0; i < x->master_key_length; i++) {
        if (BIO_printf(bp, "%02X", x->master_key[i]) <= 0)
            goto err;
    }
    if (BIO_puts(bp, "\n") <= 0)
        goto err;

    return 1;
 err:
    return 0;
}
