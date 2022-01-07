
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SSL_SESSION ;
typedef int SSL_CTX ;
typedef int SSL ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int SSL3_RT_MAX_PLAIN_LENGTH ;
 int SSL_CTX_clear_options (int *,int ) ;
 int SSL_CTX_free (int *) ;
 void* SSL_CTX_set1_groups_list (int *,char*) ;
 void* SSL_CTX_set_max_early_data (int *,int ) ;
 int SSL_ERROR_NONE ;
 int SSL_OP_ENABLE_MIDDLEBOX_COMPAT ;
 int SSL_READ_EARLY_DATA_FINISH ;
 int SSL_READ_EARLY_DATA_SUCCESS ;
 int SSL_SESSION_free (int *) ;
 int SSL_connect (int *) ;
 int SSL_free (int *) ;
 int * SSL_get1_session (int *) ;
 int SSL_read_early_data (int *,char*,int,size_t*) ;
 void* SSL_set_session (int *,int *) ;
 int SSL_shutdown (int *) ;
 void* SSL_write_early_data (int *,char const*,int ,size_t*) ;
 int TEST_error (char*) ;
 int TEST_false (void*) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_int_le (int ,int ) ;
 int TEST_ptr (int *) ;
 int TEST_size_t_eq (scalar_t__,int ) ;
 int TEST_size_t_gt (scalar_t__,int ) ;
 int TEST_true (void*) ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 void* badccs ;
 void* badsessid ;
 void* badvers ;
 int bio_f_watchccs_filter () ;
 int * c_to_s_fbio ;
 void* cappdataseen ;
 void* ccsaftersh ;
 void* ccsbeforesh ;
 int cert ;
 void* chseen ;
 scalar_t__ chsessidlen ;
 void* create_ssl_connection (int *,int *,int ) ;
 void* create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 void* create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 int privkey ;
 int * s_to_c_fbio ;
 void* sappdataseen ;
 void* sccsseen ;
 void* shseen ;
 int strlen (char const*) ;

__attribute__((used)) static int test_tls13ccs(int tst)
{
    SSL_CTX *sctx = ((void*)0), *cctx = ((void*)0);
    SSL *sssl = ((void*)0), *cssl = ((void*)0);
    int ret = 0;
    const char msg[] = "Dummy data";
    char buf[80];
    size_t written, readbytes;
    SSL_SESSION *sess = ((void*)0);

    chseen = shseen = sccsseen = ccsaftersh = ccsbeforesh = 0;
    sappdataseen = cappdataseen = badccs = badvers = badsessid = 0;
    chsessidlen = 0;

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(), TLS_client_method(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey))
        || !TEST_true(SSL_CTX_set_max_early_data(sctx,
                                                 SSL3_RT_MAX_PLAIN_LENGTH)))
        goto err;
    switch (tst) {
    case 0:
    case 3:
    case 6:
    case 9:
        break;
    case 1:
    case 4:
    case 7:
    case 10:
        SSL_CTX_clear_options(cctx, SSL_OP_ENABLE_MIDDLEBOX_COMPAT);
        break;
    case 2:
    case 5:
    case 8:
    case 11:
        SSL_CTX_clear_options(sctx, SSL_OP_ENABLE_MIDDLEBOX_COMPAT);
        break;
    default:
        TEST_error("Invalid test value");
        goto err;
    }

    if (tst >= 6) {

        if (!TEST_true(create_ssl_objects(sctx, cctx, &sssl, &cssl, ((void*)0), ((void*)0)))
                || !TEST_true(create_ssl_connection(sssl, cssl, SSL_ERROR_NONE)))
            goto err;
        sess = SSL_get1_session(cssl);
        if (!TEST_ptr(sess))
            goto err;
        SSL_shutdown(cssl);
        SSL_shutdown(sssl);
        SSL_free(sssl);
        SSL_free(cssl);
        sssl = cssl = ((void*)0);
    }

    if ((tst >= 3 && tst <= 5) || tst >= 9) {







        if (!TEST_true(SSL_CTX_set1_groups_list(sctx, "P-256")))
            goto err;

    }

    s_to_c_fbio = BIO_new(bio_f_watchccs_filter());
    c_to_s_fbio = BIO_new(bio_f_watchccs_filter());
    if (!TEST_ptr(s_to_c_fbio)
            || !TEST_ptr(c_to_s_fbio)) {
        BIO_free(s_to_c_fbio);
        BIO_free(c_to_s_fbio);
        goto err;
    }


    if (!TEST_true(create_ssl_objects(sctx, cctx, &sssl, &cssl, s_to_c_fbio,
                                      c_to_s_fbio)))
        goto err;

    if (tst >= 6) {

        if (!TEST_true(SSL_set_session(cssl, sess))
                || !TEST_true(SSL_write_early_data(cssl, msg, strlen(msg),
                                                   &written))
                || (tst <= 8
                    && !TEST_int_eq(SSL_read_early_data(sssl, buf, sizeof(buf),
                                                &readbytes),
                                                SSL_READ_EARLY_DATA_SUCCESS)))
            goto err;
        if (tst <= 8) {
            if (!TEST_int_gt(SSL_connect(cssl), 0))
                goto err;
        } else {
            if (!TEST_int_le(SSL_connect(cssl), 0))
                goto err;
        }
        if (!TEST_int_eq(SSL_read_early_data(sssl, buf, sizeof(buf),
                                             &readbytes),
                         SSL_READ_EARLY_DATA_FINISH))
            goto err;
    }


    if (!TEST_true(create_ssl_connection(sssl, cssl, SSL_ERROR_NONE)))
        goto err;






    if (!TEST_false(badccs) || !TEST_false(badvers) || !TEST_false(badsessid))
        goto err;

    switch (tst) {
    case 0:
        if (!TEST_true(sccsseen)
                || !TEST_true(ccsaftersh)
                || !TEST_false(ccsbeforesh)
                || !TEST_size_t_gt(chsessidlen, 0))
            goto err;
        break;

    case 1:
        if (!TEST_true(sccsseen)
                || !TEST_false(ccsaftersh)
                || !TEST_false(ccsbeforesh)
                || !TEST_size_t_eq(chsessidlen, 0))
            goto err;
        break;

    case 2:
        if (!TEST_false(sccsseen)
                || !TEST_true(ccsaftersh)
                || !TEST_false(ccsbeforesh)
                || !TEST_size_t_gt(chsessidlen, 0))
            goto err;
        break;

    case 3:
        if (!TEST_true(sccsseen)
                || !TEST_true(ccsaftersh)
                || !TEST_false(ccsbeforesh)
                || !TEST_size_t_gt(chsessidlen, 0))
            goto err;
        break;

    case 4:
        if (!TEST_true(sccsseen)
                || !TEST_false(ccsaftersh)
                || !TEST_false(ccsbeforesh)
                || !TEST_size_t_eq(chsessidlen, 0))
            goto err;
        break;

    case 5:
        if (!TEST_false(sccsseen)
                || !TEST_true(ccsaftersh)
                || !TEST_false(ccsbeforesh)
                || !TEST_size_t_gt(chsessidlen, 0))
            goto err;
        break;

    case 6:
        if (!TEST_true(sccsseen)
                || !TEST_false(ccsaftersh)
                || !TEST_true(ccsbeforesh)
                || !TEST_size_t_gt(chsessidlen, 0))
            goto err;
        break;

    case 7:
        if (!TEST_true(sccsseen)
                || !TEST_false(ccsaftersh)
                || !TEST_false(ccsbeforesh)
                || !TEST_size_t_eq(chsessidlen, 0))
            goto err;
        break;

    case 8:
        if (!TEST_false(sccsseen)
                || !TEST_false(ccsaftersh)
                || !TEST_true(ccsbeforesh)
                || !TEST_size_t_gt(chsessidlen, 0))
            goto err;
        break;

    case 9:
        if (!TEST_true(sccsseen)
                || !TEST_false(ccsaftersh)
                || !TEST_true(ccsbeforesh)
                || !TEST_size_t_gt(chsessidlen, 0))
            goto err;
        break;

    case 10:
        if (!TEST_true(sccsseen)
                || !TEST_false(ccsaftersh)
                || !TEST_false(ccsbeforesh)
                || !TEST_size_t_eq(chsessidlen, 0))
            goto err;
        break;

    case 11:
        if (!TEST_false(sccsseen)
                || !TEST_false(ccsaftersh)
                || !TEST_true(ccsbeforesh)
                || !TEST_size_t_gt(chsessidlen, 0))
            goto err;
        break;

    default:
        TEST_error("Invalid test value");
        goto err;
    }

    ret = 1;
 err:
    SSL_SESSION_free(sess);
    SSL_free(sssl);
    SSL_free(cssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);

    return ret;
}
