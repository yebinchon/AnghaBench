
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* peername; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;


 int OPENSSL_free (char*) ;

void X509_VERIFY_PARAM_move_peername(X509_VERIFY_PARAM *to,
                                     X509_VERIFY_PARAM *from)
{
    char *peername = (from != ((void*)0)) ? from->peername : ((void*)0);

    if (to->peername != peername) {
        OPENSSL_free(to->peername);
        to->peername = peername;
    }
    if (from)
        from->peername = ((void*)0);
}
