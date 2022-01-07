
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int AssertArg (int) ;
 int SSL_CTX_set_options (int *,int) ;
 int SSL_OP_NO_TLSv1_1 ;
 int SSL_OP_NO_TLSv1_2 ;
 int TLS1_1_VERSION ;
 int TLS1_2_VERSION ;

__attribute__((used)) static int
SSL_CTX_set_max_proto_version(SSL_CTX *ctx, int version)
{
 int ssl_options = 0;

 AssertArg(version != 0);
 SSL_CTX_set_options(ctx, ssl_options);

 return 1;
}
