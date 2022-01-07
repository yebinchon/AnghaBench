
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stream; } ;
typedef TYPE_1__ RedisSock ;


 size_t php_stream_write (int ,char*,size_t) ;
 scalar_t__ redis_check_eof (TYPE_1__*,int ) ;

int
redis_sock_write(RedisSock *redis_sock, char *cmd, size_t sz)
{
    if (redis_check_eof(redis_sock, 0) == 0 &&
        php_stream_write(redis_sock->stream, cmd, sz) == sz
    ) {
        return sz;
    }
    return -1;
}
