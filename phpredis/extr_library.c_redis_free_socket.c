
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ host; scalar_t__ persistent_id; scalar_t__ auth; scalar_t__ err; scalar_t__ pipeline_cmd; scalar_t__ prefix; } ;
typedef TYPE_1__ RedisSock ;


 int efree (TYPE_1__*) ;
 int zend_string_release (scalar_t__) ;

void redis_free_socket(RedisSock *redis_sock)
{
    if (redis_sock->prefix) {
        zend_string_release(redis_sock->prefix);
    }
    if (redis_sock->pipeline_cmd) {
        zend_string_release(redis_sock->pipeline_cmd);
    }
    if (redis_sock->err) {
        zend_string_release(redis_sock->err);
    }
    if (redis_sock->auth) {
        zend_string_release(redis_sock->auth);
    }
    if (redis_sock->persistent_id) {
        zend_string_release(redis_sock->persistent_id);
    }
    if (redis_sock->host) {
        zend_string_release(redis_sock->host);
    }
    efree(redis_sock);
}
