
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int SSL_CTX_set_options (int *,int) ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_OP_NO_SSLv3 ;
 int SSL_OP_NO_TLSv1 ;
 int SSL_OP_NO_TLSv1_1 ;
 int SSL_OP_NO_TLSv1_2 ;
 int TLS1_1_VERSION ;
 int TLS1_2_VERSION ;
 int TLS1_VERSION ;

__attribute__((used)) static int
SSL_CTX_set_min_proto_version(SSL_CTX *ctx, int version)
{
 int ssl_options = SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3;

 if (version > TLS1_VERSION)
  ssl_options |= SSL_OP_NO_TLSv1;
 SSL_CTX_set_options(ctx, ssl_options);

 return 1;
}
