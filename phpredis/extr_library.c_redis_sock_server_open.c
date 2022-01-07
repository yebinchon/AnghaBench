
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
typedef TYPE_1__ RedisSock ;


 int FAILURE ;


 int SUCCESS ;
 int redis_sock_connect (TYPE_1__*) ;

int
redis_sock_server_open(RedisSock *redis_sock)
{
    if (redis_sock) {
        switch (redis_sock->status) {
        case 128:
            return FAILURE;
        case 129:
            return redis_sock_connect(redis_sock);
        default:
            return SUCCESS;
        }
    }
    return FAILURE;
}
