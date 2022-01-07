
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int skeymat2 ;
typedef int skeymat1 ;
typedef int label ;
typedef int context ;
typedef int ckeymat2 ;
typedef int ckeymat1 ;
typedef int buf ;
typedef int SSL_SESSION ;
typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_free (int *) ;
 int SSL_EARLY_DATA_ACCEPTED ;
 int SSL_READ_EARLY_DATA_ERROR ;
 int SSL_SESSION_free (int *) ;
 int SSL_export_keying_material_early (int *,unsigned char*,int,char const*,int,unsigned char const*,int) ;
 int SSL_free (int *) ;
 int SSL_get_early_data_status (int *) ;
 int SSL_read_early_data (int *,unsigned char*,int,size_t*) ;
 int SSL_write_early_data (int *,int *,int ,size_t*) ;
 int TEST_int_eq (int ,int) ;
 int TEST_mem_eq (unsigned char*,int,unsigned char*,int) ;
 int TEST_mem_ne (unsigned char*,int,unsigned char*,int) ;
 int TEST_true (int ) ;
 int * clientpsk ;
 int * serverpsk ;
 int setupearly_data_test (int **,int **,int **,int **,int **,int) ;

__attribute__((used)) static int test_export_key_mat_early(int idx)
{
    static const char label[] = "test label";
    static const unsigned char context[] = "context";
    int testresult = 0;
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    SSL_SESSION *sess = ((void*)0);
    const unsigned char *emptycontext = ((void*)0);
    unsigned char ckeymat1[80], ckeymat2[80];
    unsigned char skeymat1[80], skeymat2[80];
    unsigned char buf[1];
    size_t readbytes, written;

    if (!TEST_true(setupearly_data_test(&cctx, &sctx, &clientssl, &serverssl,
                                        &sess, idx)))
        goto end;


    if (!TEST_true(SSL_write_early_data(clientssl, ((void*)0), 0, &written))
            || !TEST_int_eq(SSL_read_early_data(serverssl, buf, sizeof(buf),
                                                &readbytes),
                            SSL_READ_EARLY_DATA_ERROR)
            || !TEST_int_eq(SSL_get_early_data_status(serverssl),
                            SSL_EARLY_DATA_ACCEPTED))
        goto end;

    if (!TEST_int_eq(SSL_export_keying_material_early(
                     clientssl, ckeymat1, sizeof(ckeymat1), label,
                     sizeof(label) - 1, context, sizeof(context) - 1), 1)
            || !TEST_int_eq(SSL_export_keying_material_early(
                            clientssl, ckeymat2, sizeof(ckeymat2), label,
                            sizeof(label) - 1, emptycontext, 0), 1)
            || !TEST_int_eq(SSL_export_keying_material_early(
                            serverssl, skeymat1, sizeof(skeymat1), label,
                            sizeof(label) - 1, context, sizeof(context) - 1), 1)
            || !TEST_int_eq(SSL_export_keying_material_early(
                            serverssl, skeymat2, sizeof(skeymat2), label,
                            sizeof(label) - 1, emptycontext, 0), 1)




            || !TEST_mem_eq(ckeymat1, sizeof(ckeymat1), skeymat1,
                            sizeof(skeymat1))




            || !TEST_mem_eq(ckeymat2, sizeof(ckeymat2), skeymat2,
                            sizeof(skeymat2))

            || !TEST_mem_ne(ckeymat1, sizeof(ckeymat1), ckeymat2,
                            sizeof(ckeymat2)))
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
