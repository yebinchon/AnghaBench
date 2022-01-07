
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int SSL ;
typedef int EVP_MD ;


 int SSL_SESSION_up_ref (int *) ;
 int * clientpsk ;
 scalar_t__ pskid ;
 size_t strlen (scalar_t__) ;
 int use_session_cb_cnt ;

__attribute__((used)) static int use_session_cb(SSL *ssl, const EVP_MD *md, const unsigned char **id,
                          size_t *idlen, SSL_SESSION **sess)
{
    switch (++use_session_cb_cnt) {
    case 1:

        if (md != ((void*)0))
            return 0;
        break;

    case 2:

        if (md == ((void*)0))
            return 0;
        break;

    default:

        return 0;
    }

    if (clientpsk != ((void*)0))
        SSL_SESSION_up_ref(clientpsk);

    *sess = clientpsk;
    *id = (const unsigned char *)pskid;
    *idlen = strlen(pskid);

    return 1;
}
