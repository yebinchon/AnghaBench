
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int OPENSSL_INIT_SETTINGS ;


 int ERR_R_INIT_FAIL ;
 int OPENSSL_INIT_ADD_ALL_CIPHERS ;
 int OPENSSL_INIT_ADD_ALL_DIGESTS ;
 int OPENSSL_INIT_LOAD_CONFIG ;
 int OPENSSL_INIT_LOAD_SSL_STRINGS ;
 int OPENSSL_INIT_NO_LOAD_CONFIG ;
 int OPENSSL_INIT_NO_LOAD_SSL_STRINGS ;
 int OPENSSL_init_crypto (int,int const*) ;
 int RUN_ONCE (int *,int ) ;
 int RUN_ONCE_ALT (int *,int ,int ) ;
 int SSL_F_OPENSSL_INIT_SSL ;
 int SSLerr (int ,int ) ;
 int ossl_init_load_ssl_strings ;
 int ossl_init_no_load_ssl_strings ;
 int ossl_init_ssl_base ;
 int ssl_base ;
 int ssl_strings ;
 scalar_t__ stopped ;

int OPENSSL_init_ssl(uint64_t opts, const OPENSSL_INIT_SETTINGS * settings)
{
    static int stoperrset = 0;

    if (stopped) {
        if (!stoperrset) {





            stoperrset = 1;
            SSLerr(SSL_F_OPENSSL_INIT_SSL, ERR_R_INIT_FAIL);
        }
        return 0;
    }

    opts |= OPENSSL_INIT_ADD_ALL_CIPHERS
         | OPENSSL_INIT_ADD_ALL_DIGESTS;

    if ((opts & OPENSSL_INIT_NO_LOAD_CONFIG) == 0)
        opts |= OPENSSL_INIT_LOAD_CONFIG;


    if (!OPENSSL_init_crypto(opts, settings))
        return 0;

    if (!RUN_ONCE(&ssl_base, ossl_init_ssl_base))
        return 0;

    if ((opts & OPENSSL_INIT_NO_LOAD_SSL_STRINGS)
        && !RUN_ONCE_ALT(&ssl_strings, ossl_init_no_load_ssl_strings,
                         ossl_init_load_ssl_strings))
        return 0;

    if ((opts & OPENSSL_INIT_LOAD_SSL_STRINGS)
        && !RUN_ONCE(&ssl_strings, ossl_init_load_ssl_strings))
        return 0;

    return 1;
}
