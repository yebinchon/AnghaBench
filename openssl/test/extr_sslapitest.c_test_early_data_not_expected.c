
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SSL_SESSION ;
typedef int SSL_CTX ;
typedef int SSL ;


 int MSG1 ;
 int MSG2 ;
 int SSL_CTX_free (int *) ;
 int SSL_EARLY_DATA_REJECTED ;
 int SSL_SESSION_free (int *) ;
 int SSL_accept (int *) ;
 int SSL_connect (int *) ;
 int SSL_free (int *) ;
 int SSL_get_early_data_status (int *) ;
 int SSL_read_ex (int *,unsigned char*,int,size_t*) ;
 int SSL_write_early_data (int *,int ,int ,size_t*) ;
 int SSL_write_ex (int *,int ,int ,size_t*) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_int_le (int ,int ) ;
 int TEST_mem_eq (unsigned char*,size_t,int ,int ) ;
 int TEST_size_t_eq (size_t,int ) ;
 int TEST_true (int ) ;
 int * clientpsk ;
 int * serverpsk ;
 int setupearly_data_test (int **,int **,int **,int **,int **,int) ;
 int strlen (int ) ;

__attribute__((used)) static int test_early_data_not_expected(int idx)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    int testresult = 0;
    SSL_SESSION *sess = ((void*)0);
    unsigned char buf[20];
    size_t readbytes, written;

    if (!TEST_true(setupearly_data_test(&cctx, &sctx, &clientssl,
                                        &serverssl, &sess, idx)))
        goto end;


    if (!TEST_true(SSL_write_early_data(clientssl, MSG1, strlen(MSG1),
                                        &written)))
        goto end;





    if (!TEST_int_le(SSL_accept(serverssl), 0)
     || !TEST_int_gt(SSL_connect(clientssl), 0)
     || !TEST_int_eq(SSL_get_early_data_status(serverssl),
                     SSL_EARLY_DATA_REJECTED)
     || !TEST_int_gt(SSL_accept(serverssl), 0)
     || !TEST_int_eq(SSL_get_early_data_status(clientssl),
                     SSL_EARLY_DATA_REJECTED))
        goto end;


    if (!TEST_true(SSL_write_ex(clientssl, MSG2, strlen(MSG2), &written))
            || !TEST_size_t_eq(written, strlen(MSG2)))
        goto end;

    if (!TEST_true(SSL_read_ex(serverssl, buf, sizeof(buf), &readbytes))
            || !TEST_mem_eq(buf, readbytes, MSG2, strlen(MSG2)))
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
