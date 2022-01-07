
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chain; int * chainfile; int * key; int certform; int * certfile; int keyform; int * keyfile; int * cert; struct TYPE_4__* next; } ;
typedef TYPE_1__ SSL_EXCERT ;


 int BIO_printf (int ,char*) ;
 int FORMAT_PEM ;
 int bio_err ;
 int * load_cert (int *,int ,char*) ;
 int load_certs (int *,int *,int ,int *,char*) ;
 void* load_key (int *,int ,int ,int *,int *,char*) ;
 int ssl_excert_free (TYPE_1__*) ;

int load_excert(SSL_EXCERT **pexc)
{
    SSL_EXCERT *exc = *pexc;
    if (exc == ((void*)0))
        return 1;

    if (exc->certfile == ((void*)0) && exc->next == ((void*)0)) {
        ssl_excert_free(exc);
        *pexc = ((void*)0);
        return 1;
    }
    for (; exc; exc = exc->next) {
        if (exc->certfile == ((void*)0)) {
            BIO_printf(bio_err, "Missing filename\n");
            return 0;
        }
        exc->cert = load_cert(exc->certfile, exc->certform,
                              "Server Certificate");
        if (exc->cert == ((void*)0))
            return 0;
        if (exc->keyfile != ((void*)0)) {
            exc->key = load_key(exc->keyfile, exc->keyform,
                                0, ((void*)0), ((void*)0), "Server Key");
        } else {
            exc->key = load_key(exc->certfile, exc->certform,
                                0, ((void*)0), ((void*)0), "Server Key");
        }
        if (exc->key == ((void*)0))
            return 0;
        if (exc->chainfile != ((void*)0)) {
            if (!load_certs(exc->chainfile, &exc->chain, FORMAT_PEM, ((void*)0),
                            "Server Chain"))
                return 0;
        }
    }
    return 1;
}
