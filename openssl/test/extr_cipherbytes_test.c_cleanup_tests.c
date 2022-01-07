
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSL_CTX_free (int ) ;
 int SSL_free (int ) ;
 int ctx ;
 int s ;

void cleanup_tests(void)
{
    SSL_free(s);
    SSL_CTX_free(ctx);
}
