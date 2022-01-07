
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sb; } ;
typedef TYPE_1__ php_stream_statbuf ;
struct TYPE_7__ {scalar_t__ abstract; } ;
typedef TYPE_2__ php_stream ;
struct TYPE_8__ {int socket; } ;
typedef TYPE_3__ php_netstream_data_t ;


 int zend_fstat (int ,int *) ;

__attribute__((used)) static int php_sockop_stat(php_stream *stream, php_stream_statbuf *ssb)
{



 php_netstream_data_t *sock = (php_netstream_data_t*)stream->abstract;

 return zend_fstat(sock->socket, &ssb->sb);

}
