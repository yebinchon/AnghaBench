
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_METHOD ;
typedef int SSL_CTX ;


 int SSL_CTX_check_private_key (int *) ;
 int SSL_CTX_free (int *) ;
 int * SSL_CTX_new (int const*) ;
 int SSL_CTX_set_dh_auto (int *,int) ;
 int SSL_CTX_set_max_proto_version (int *,int) ;
 int SSL_CTX_set_min_proto_version (int *,int) ;
 int SSL_CTX_use_PrivateKey_file (int *,char*,int ) ;
 int SSL_CTX_use_certificate_file (int *,char*,int ) ;
 int SSL_FILETYPE_PEM ;
 int TEST_int_eq (int ,int) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;

int create_ssl_ctx_pair(const SSL_METHOD *sm, const SSL_METHOD *cm,
                        int min_proto_version, int max_proto_version,
                        SSL_CTX **sctx, SSL_CTX **cctx, char *certfile,
                        char *privkeyfile)
{
    SSL_CTX *serverctx = ((void*)0);
    SSL_CTX *clientctx = ((void*)0);

    if (!TEST_ptr(serverctx = SSL_CTX_new(sm))
            || (cctx != ((void*)0) && !TEST_ptr(clientctx = SSL_CTX_new(cm))))
        goto err;

    if ((min_proto_version > 0
         && !TEST_true(SSL_CTX_set_min_proto_version(serverctx,
                                                     min_proto_version)))
        || (max_proto_version > 0
            && !TEST_true(SSL_CTX_set_max_proto_version(serverctx,
                                                        max_proto_version))))
        goto err;
    if (clientctx != ((void*)0)
        && ((min_proto_version > 0
             && !TEST_true(SSL_CTX_set_min_proto_version(clientctx,
                                                         min_proto_version)))
            || (max_proto_version > 0
                && !TEST_true(SSL_CTX_set_max_proto_version(clientctx,
                                                            max_proto_version)))))
        goto err;

    if (certfile != ((void*)0) && privkeyfile != ((void*)0)) {
        if (!TEST_int_eq(SSL_CTX_use_certificate_file(serverctx, certfile,
                                                      SSL_FILETYPE_PEM), 1)
                || !TEST_int_eq(SSL_CTX_use_PrivateKey_file(serverctx,
                                                            privkeyfile,
                                                            SSL_FILETYPE_PEM), 1)
                || !TEST_int_eq(SSL_CTX_check_private_key(serverctx), 1))
            goto err;
    }


    SSL_CTX_set_dh_auto(serverctx, 1);


    *sctx = serverctx;
    if (cctx != ((void*)0))
        *cctx = clientctx;
    return 1;

 err:
    SSL_CTX_free(serverctx);
    SSL_CTX_free(clientctx);
    return 0;
}
