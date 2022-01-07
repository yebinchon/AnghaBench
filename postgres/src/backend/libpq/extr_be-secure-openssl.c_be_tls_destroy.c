
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSL_CTX_free (int *) ;
 int * SSL_context ;
 int ssl_loaded_verify_locations ;

void
be_tls_destroy(void)
{
 if (SSL_context)
  SSL_CTX_free(SSL_context);
 SSL_context = ((void*)0);
 ssl_loaded_verify_locations = 0;
}
