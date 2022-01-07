
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int php_stream ;


 int php_openssl_sockop_io (int,int *,char*,size_t) ;

__attribute__((used)) static ssize_t php_openssl_sockop_read(php_stream *stream, char *buf, size_t count)
{
 return php_openssl_sockop_io( 1, stream, buf, count );
}
