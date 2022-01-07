
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_stream ;
typedef int SSL ;


 scalar_t__ SSL_get_ex_data (int const*,int ) ;
 int ssl_stream_data_index ;

php_stream* php_openssl_get_stream_from_ssl_handle(const SSL *ssl)
{
 return (php_stream*)SSL_get_ex_data(ssl, ssl_stream_data_index);
}
