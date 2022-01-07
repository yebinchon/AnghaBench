
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * err; } ;
typedef TYPE_1__ RedisSock ;


 int * zend_string_init (char const*,int,int ) ;
 int zend_string_release (int *) ;

void
redis_sock_set_err(RedisSock *redis_sock, const char *msg, int msg_len)
{

    if (redis_sock->err != ((void*)0)) {
        zend_string_release(redis_sock->err);
        redis_sock->err = ((void*)0);
    }

    if (msg != ((void*)0) && msg_len > 0) {

        redis_sock->err = zend_string_init(msg, msg_len, 0);
    }
}
