
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int list; int nb_active; } ;
struct TYPE_6__ {scalar_t__ watching; int status; int mode; int * stream; scalar_t__ persistent; } ;
typedef TYPE_1__ RedisSock ;
typedef TYPE_2__ ConnectionPool ;


 int ATOMIC ;
 int FAILURE ;
 scalar_t__ INI_INT (char*) ;
 int REDIS_SOCK_STATUS_DISCONNECTED ;
 int SUCCESS ;
 int php_stream_close (int *) ;
 int php_stream_pclose (int *) ;
 TYPE_2__* redis_sock_get_connection_pool (TYPE_1__*) ;
 int zend_llist_prepend_element (int *,int **) ;

int
redis_sock_disconnect(RedisSock *redis_sock, int force)
{
    if (redis_sock == ((void*)0)) {
        return FAILURE;
    } else if (redis_sock->stream) {
        if (redis_sock->persistent) {
            ConnectionPool *p = ((void*)0);
            if (INI_INT("redis.pconnect.pooling_enabled")) {
                p = redis_sock_get_connection_pool(redis_sock);
            }
            if (force) {
                php_stream_pclose(redis_sock->stream);
                if (p) p->nb_active--;
            } else if (p) {
                zend_llist_prepend_element(&p->list, &redis_sock->stream);
            }
        } else {
            php_stream_close(redis_sock->stream);
        }
        redis_sock->stream = ((void*)0);
    }
    redis_sock->mode = ATOMIC;
    redis_sock->status = REDIS_SOCK_STATUS_DISCONNECTED;
    redis_sock->watching = 0;

    return SUCCESS;
}
