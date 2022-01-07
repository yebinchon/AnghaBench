
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ticket_appdata_len; int * ticket_appdata; } ;
typedef TYPE_1__ SSL_SESSION ;


 int OPENSSL_free (int *) ;
 int * OPENSSL_memdup (void const*,size_t) ;

int SSL_SESSION_set1_ticket_appdata(SSL_SESSION *ss, const void *data, size_t len)
{
    OPENSSL_free(ss->ticket_appdata);
    ss->ticket_appdata_len = 0;
    if (data == ((void*)0) || len == 0) {
        ss->ticket_appdata = ((void*)0);
        return 1;
    }
    ss->ticket_appdata = OPENSSL_memdup(data, len);
    if (ss->ticket_appdata != ((void*)0)) {
        ss->ticket_appdata_len = len;
        return 1;
    }
    return 0;
}
