
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int php_stream ;
struct TYPE_2__ {int (* flush ) (int *) ;} ;


 TYPE_1__ php_stream_socket_ops ;
 int stub1 (int *) ;

__attribute__((used)) static int php_openssl_sockop_flush(php_stream *stream)
{
 return php_stream_socket_ops.flush(stream);
}
