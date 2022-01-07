
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_mem () ;
 int BIO_up_ref (int *) ;
 int CONNTYPE_CONNECTION_FAIL ;
 int CONNTYPE_CONNECTION_SUCCESS ;
 int CONNTYPE_NO_CONNECTION ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_max_proto_version (int *,int ) ;
 int SSL_CTX_set_min_proto_version (int *,int ) ;
 int SSL_ERROR_NONE ;
 int SSL_free (int *) ;
 int SSL_set_bio (int *,int *,int *) ;
 int TEST_ptr (int *) ;
 int TEST_true (int) ;
 int TLS1_2_VERSION ;
 int TLS1_3_VERSION ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int TOTAL_NO_CONN_SSL_SET_BIO_TESTS ;
 int USE_BIO_1 ;
 int USE_BIO_2 ;
 int USE_DEFAULT ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int privkey ;
 int setupbio (int **,int *,int *,int) ;

__attribute__((used)) static int test_ssl_set_bio(int idx)
{
    SSL_CTX *sctx = ((void*)0), *cctx = ((void*)0);
    BIO *bio1 = ((void*)0);
    BIO *bio2 = ((void*)0);
    BIO *irbio = ((void*)0), *iwbio = ((void*)0), *nrbio = ((void*)0), *nwbio = ((void*)0);
    SSL *serverssl = ((void*)0), *clientssl = ((void*)0);
    int initrbio, initwbio, newrbio, newwbio, conntype;
    int testresult = 0;

    if (idx < TOTAL_NO_CONN_SSL_SET_BIO_TESTS) {
        initrbio = idx % 3;
        idx /= 3;
        initwbio = idx % 3;
        idx /= 3;
        newrbio = idx % 3;
        idx /= 3;
        newwbio = idx % 3;
        conntype = CONNTYPE_NO_CONNECTION;
    } else {
        idx -= TOTAL_NO_CONN_SSL_SET_BIO_TESTS;
        initrbio = initwbio = USE_DEFAULT;
        newrbio = idx % 2;
        idx /= 2;
        newwbio = idx % 2;
        idx /= 2;
        conntype = idx % 2;
    }

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(), TLS_client_method(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    if (conntype == CONNTYPE_CONNECTION_FAIL) {






        SSL_CTX_set_min_proto_version(sctx, TLS1_3_VERSION);
        SSL_CTX_set_max_proto_version(cctx, TLS1_2_VERSION);
    }

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                      ((void*)0), ((void*)0))))
        goto end;

    if (initrbio == USE_BIO_1
            || initwbio == USE_BIO_1
            || newrbio == USE_BIO_1
            || newwbio == USE_BIO_1) {
        if (!TEST_ptr(bio1 = BIO_new(BIO_s_mem())))
            goto end;
    }

    if (initrbio == USE_BIO_2
            || initwbio == USE_BIO_2
            || newrbio == USE_BIO_2
            || newwbio == USE_BIO_2) {
        if (!TEST_ptr(bio2 = BIO_new(BIO_s_mem())))
            goto end;
    }

    if (initrbio != USE_DEFAULT) {
        setupbio(&irbio, bio1, bio2, initrbio);
        setupbio(&iwbio, bio1, bio2, initwbio);
        SSL_set_bio(clientssl, irbio, iwbio);






        if (irbio != ((void*)0))
            BIO_up_ref(irbio);
        if (iwbio != ((void*)0) && iwbio != irbio)
            BIO_up_ref(iwbio);
    }

    if (conntype != CONNTYPE_NO_CONNECTION
            && !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE)
                          == (conntype == CONNTYPE_CONNECTION_SUCCESS)))
        goto end;

    setupbio(&nrbio, bio1, bio2, newrbio);
    setupbio(&nwbio, bio1, bio2, newwbio);






    if (nrbio != ((void*)0)
            && nrbio != irbio
            && (nwbio != iwbio || nrbio != nwbio))
        BIO_up_ref(nrbio);
    if (nwbio != ((void*)0)
            && nwbio != nrbio
            && (nwbio != iwbio || (nwbio == iwbio && irbio == iwbio)))
        BIO_up_ref(nwbio);

    SSL_set_bio(clientssl, nrbio, nwbio);

    testresult = 1;

 end:
    BIO_free(bio1);
    BIO_free(bio2);







    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);
    return testresult;
}
