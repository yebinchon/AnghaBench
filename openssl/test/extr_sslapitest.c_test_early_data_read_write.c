
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef int buf ;
typedef int SSL_SESSION ;
typedef int SSL_CTX ;
typedef int SSL ;
typedef int BIO ;


 int BIO_read_ex (int *,unsigned char*,int,size_t*) ;
 int BIO_write_ex (int *,unsigned char*,size_t,size_t*) ;
 int ERR_clear_error () ;
 unsigned char* MSG1 ;
 unsigned char* MSG2 ;
 unsigned char* MSG3 ;
 unsigned char* MSG4 ;
 unsigned char* MSG5 ;
 unsigned char* MSG6 ;
 unsigned char* MSG7 ;
 unsigned char SSL3_RT_HEADER_LENGTH ;
 int SSL_CTX_free (int *) ;
 int SSL_EARLY_DATA_ACCEPTED ;
 int SSL_READ_EARLY_DATA_ERROR ;
 int SSL_READ_EARLY_DATA_FINISH ;
 int SSL_READ_EARLY_DATA_SUCCESS ;
 int SSL_SESSION_free (int *) ;
 int SSL_accept (int *) ;
 int SSL_connect (int *) ;
 int SSL_free (int *) ;
 int * SSL_get1_session (int *) ;
 int SSL_get_early_data_status (int *) ;
 int * SSL_get_rbio (int *) ;
 int SSL_read_early_data (int *,unsigned char*,int,size_t*) ;
 int SSL_read_ex (int *,unsigned char*,int,size_t*) ;
 int SSL_set_session (int *,int *) ;
 int SSL_shutdown (int *) ;
 int SSL_write_early_data (int *,unsigned char*,size_t,size_t*) ;
 int SSL_write_ex (int *,unsigned char*,size_t,size_t*) ;
 int TEST_false (int ) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_mem_eq (unsigned char*,size_t,unsigned char*,size_t) ;
 int TEST_size_t_eq (size_t,size_t) ;
 int TEST_size_t_gt (size_t,unsigned char) ;
 int TEST_size_t_lt (size_t,int) ;
 int TEST_true (int ) ;
 int * clientpsk ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 scalar_t__ find_session_cb_cnt ;
 int * serverpsk ;
 int setupearly_data_test (int **,int **,int **,int **,int **,int) ;
 size_t strlen (unsigned char*) ;
 scalar_t__ use_session_cb_cnt ;

__attribute__((used)) static int test_early_data_read_write(int idx)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0;
    SSL_SESSION *sess = ((void*)0);
    unsigned char buf[20], data[1024];
    size_t readbytes, written, eoedlen, rawread, rawwritten;
    BIO *rbio;

    if (!TEST_true(setupearly_data_test(&cctx, &sctx, &clientssl,
                                        &serverssl, &sess, idx)))
        goto end;


    if (!TEST_true(SSL_write_early_data(clientssl, MSG1, strlen(MSG1),
                                        &written))
            || !TEST_size_t_eq(written, strlen(MSG1))
            || !TEST_int_eq(SSL_read_early_data(serverssl, buf,
                                                sizeof(buf), &readbytes),
                            SSL_READ_EARLY_DATA_SUCCESS)
            || !TEST_mem_eq(MSG1, readbytes, buf, strlen(MSG1))
            || !TEST_int_eq(SSL_get_early_data_status(serverssl),
                            SSL_EARLY_DATA_ACCEPTED))
        goto end;





    if (!TEST_true(SSL_write_early_data(serverssl, MSG2, strlen(MSG2),
                                        &written))
            || !TEST_size_t_eq(written, strlen(MSG2))
            || !TEST_true(SSL_read_ex(clientssl, buf, sizeof(buf), &readbytes))
            || !TEST_mem_eq(buf, readbytes, MSG2, strlen(MSG2)))
        goto end;


    if (!TEST_true(SSL_write_early_data(clientssl, MSG3, strlen(MSG3),
                                        &written))
            || !TEST_size_t_eq(written, strlen(MSG3)))
        goto end;


    if (!TEST_int_eq(SSL_read_early_data(serverssl, buf, sizeof(buf),
                                         &readbytes),
                     SSL_READ_EARLY_DATA_SUCCESS)
            || !TEST_mem_eq(buf, readbytes, MSG3, strlen(MSG3)))
        goto end;


    if (!TEST_true(SSL_write_early_data(serverssl, MSG4, strlen(MSG4),
                                        &written))
            || !TEST_size_t_eq(written, strlen(MSG4))
            || !TEST_true(SSL_read_ex(clientssl, buf, sizeof(buf), &readbytes))
            || !TEST_mem_eq(buf, readbytes, MSG4, strlen(MSG4)))
        goto end;





    if (!TEST_true(SSL_write_ex(clientssl, MSG5, strlen(MSG5), &written))
            || !TEST_size_t_eq(written, strlen(MSG5))
            || !TEST_int_eq(SSL_get_early_data_status(clientssl),
                            SSL_EARLY_DATA_ACCEPTED))
        goto end;







    rbio = SSL_get_rbio(serverssl);
    if (!TEST_true(BIO_read_ex(rbio, data, sizeof(data), &rawread))
            || !TEST_size_t_lt(rawread, sizeof(data))
            || !TEST_size_t_gt(rawread, SSL3_RT_HEADER_LENGTH))
        goto end;


    eoedlen = SSL3_RT_HEADER_LENGTH + (data[3] << 8 | data[4]);
    if (!TEST_true(BIO_write_ex(rbio, data, eoedlen, &rawwritten))
            || !TEST_size_t_eq(rawwritten, eoedlen))
        goto end;


    if (!TEST_int_eq(SSL_read_early_data(serverssl, buf, sizeof(buf),
                                         &readbytes),
                     SSL_READ_EARLY_DATA_FINISH)
            || !TEST_size_t_eq(readbytes, 0))
        goto end;





    if (!TEST_true(SSL_write_early_data(serverssl, MSG6, strlen(MSG6),
                                        &written))
            || !TEST_size_t_eq(written, strlen(MSG6)))
        goto end;


    if (!TEST_true(BIO_write_ex(rbio, data + eoedlen, rawread - eoedlen,
                                &rawwritten))
            || !TEST_size_t_eq(rawwritten, rawread - eoedlen))
        goto end;


    if (!TEST_true(SSL_read_ex(serverssl, buf, sizeof(buf), &readbytes))
            || !TEST_size_t_eq(readbytes, strlen(MSG5)))
        goto end;


    if (!TEST_false(SSL_write_early_data(clientssl, MSG6, strlen(MSG6),
                                         &written)))
        goto end;
    ERR_clear_error();
    if (!TEST_int_eq(SSL_read_early_data(serverssl, buf, sizeof(buf),
                                         &readbytes),
                     SSL_READ_EARLY_DATA_ERROR))
        goto end;
    ERR_clear_error();


    if (!TEST_true(SSL_read_ex(clientssl, buf, sizeof(buf), &readbytes))
            || !TEST_mem_eq(buf, readbytes, MSG6, strlen(MSG6)))
        goto end;






    if (!TEST_false(SSL_read_ex(clientssl, buf, sizeof(buf), &readbytes))
            || !TEST_false(SSL_read_ex(clientssl, buf, sizeof(buf),
                           &readbytes)))
        goto end;


    if (!TEST_true(SSL_write_ex(serverssl, MSG7, strlen(MSG7), &written))
            || !TEST_size_t_eq(written, strlen(MSG7))
            || !TEST_true(SSL_read_ex(clientssl, buf, sizeof(buf), &readbytes))
            || !TEST_mem_eq(buf, readbytes, MSG7, strlen(MSG7)))
        goto end;

    SSL_SESSION_free(sess);
    sess = SSL_get1_session(clientssl);
    use_session_cb_cnt = 0;
    find_session_cb_cnt = 0;

    SSL_shutdown(clientssl);
    SSL_shutdown(serverssl);
    SSL_free(serverssl);
    SSL_free(clientssl);
    serverssl = clientssl = ((void*)0);
    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl,
                                      &clientssl, ((void*)0), ((void*)0)))
            || !TEST_true(SSL_set_session(clientssl, sess)))
        goto end;


    if (!TEST_true(SSL_write_early_data(clientssl, MSG1, strlen(MSG1),
                                        &written))
            || !TEST_size_t_eq(written, strlen(MSG1))
            || !TEST_int_eq(SSL_read_early_data(serverssl, buf, sizeof(buf),
                                                &readbytes),
                            SSL_READ_EARLY_DATA_SUCCESS)
            || !TEST_mem_eq(buf, readbytes, MSG1, strlen(MSG1)))
        goto end;

    if (!TEST_int_gt(SSL_connect(clientssl), 0)
            || !TEST_int_gt(SSL_accept(serverssl), 0))
        goto end;


    if (!TEST_false(SSL_write_early_data(clientssl, MSG6, strlen(MSG6),
                                         &written)))
        goto end;
    ERR_clear_error();
    if (!TEST_int_eq(SSL_read_early_data(serverssl, buf, sizeof(buf),
                                         &readbytes),
                     SSL_READ_EARLY_DATA_ERROR))
        goto end;
    ERR_clear_error();


    if (!TEST_true(SSL_write_ex(clientssl, MSG5, strlen(MSG5), &written))
            || !TEST_size_t_eq(written, strlen(MSG5))
            || !TEST_true(SSL_read_ex(serverssl, buf, sizeof(buf), &readbytes))
            || !TEST_size_t_eq(readbytes, strlen(MSG5)))
        goto end;

    testresult = 1;

 end:
    SSL_SESSION_free(sess);
    SSL_SESSION_free(clientpsk);
    SSL_SESSION_free(serverpsk);
    clientpsk = serverpsk = ((void*)0);
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);
    return testresult;
}
