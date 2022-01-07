
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int RedisSock ;


 int redis_free_socket (int *) ;

__attribute__((used)) static void ht_free_seed(zval *data) {
    RedisSock *redis_sock = *(RedisSock**)data;
    if (redis_sock) redis_free_socket(redis_sock);
}
