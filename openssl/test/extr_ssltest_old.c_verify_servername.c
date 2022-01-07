
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;


 int BIO_printf (int ,char*,...) ;
 int * SSL_get_SSL_CTX (int *) ;
 int bio_stdout ;
 int * s_ctx ;
 int * s_ctx2 ;
 int sn_expect ;

__attribute__((used)) static int verify_servername(SSL *client, SSL *server)
{

    SSL_CTX* ctx = SSL_get_SSL_CTX(server);
    if (sn_expect == 0)
        return 0;
    if (sn_expect == 1 && ctx == s_ctx)
        return 0;
    if (sn_expect == 2 && ctx == s_ctx2)
        return 0;
    BIO_printf(bio_stdout, "Servername: expected context %d\n", sn_expect);
    if (ctx == s_ctx2)
        BIO_printf(bio_stdout, "Servername: context is 2\n");
    else if (ctx == s_ctx)
        BIO_printf(bio_stdout, "Servername: context is 1\n");
    else
        BIO_printf(bio_stdout, "Servername: context is unknown\n");
    return -1;
}
