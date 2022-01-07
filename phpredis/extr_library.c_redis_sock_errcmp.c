
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int err; } ;
typedef TYPE_1__ RedisSock ;


 size_t ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 scalar_t__ memcmp (int ,char const*,size_t) ;

__attribute__((used)) static int redis_sock_errcmp(RedisSock *redis_sock, const char *err, size_t errlen) {
    return ZSTR_LEN(redis_sock->err) >= errlen &&
           memcmp(ZSTR_VAL(redis_sock->err), err, errlen) == 0;
}
