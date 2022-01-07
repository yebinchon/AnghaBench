
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSL_CTX_free (int ) ;
 int clientctx ;
 int serverctx ;

void cleanup_tests(void)
{
    SSL_CTX_free(clientctx);
    SSL_CTX_free(serverctx);
}
