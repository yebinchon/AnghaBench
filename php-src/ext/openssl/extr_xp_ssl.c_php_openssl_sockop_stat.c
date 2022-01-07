
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int php_stream_statbuf ;
typedef int php_stream ;
struct TYPE_2__ {int (* stat ) (int *,int *) ;} ;


 TYPE_1__ php_stream_socket_ops ;
 int stub1 (int *,int *) ;

__attribute__((used)) static int php_openssl_sockop_stat(php_stream *stream, php_stream_statbuf *ssb)
{
 return php_stream_socket_ops.stat(stream, ssb);
}
