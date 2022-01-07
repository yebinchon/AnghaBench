
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * err; } ;
typedef TYPE_1__ RedisSock ;


 int REDIS_SOCK_ERRCMP_STATIC (TYPE_1__*,char*) ;
 int REDIS_THROW_EXCEPTION (int ,int ) ;
 int ZSTR_VAL (int *) ;

__attribute__((used)) static void
redis_error_throw(RedisSock *redis_sock)
{

    if (redis_sock == ((void*)0) || redis_sock->err == ((void*)0))
        return;




    if (!REDIS_SOCK_ERRCMP_STATIC(redis_sock, "ERR") &&
        !REDIS_SOCK_ERRCMP_STATIC(redis_sock, "NOSCRIPT") &&
        !REDIS_SOCK_ERRCMP_STATIC(redis_sock, "WRONGTYPE") &&
        !REDIS_SOCK_ERRCMP_STATIC(redis_sock, "BUSYGROUP") &&
        !REDIS_SOCK_ERRCMP_STATIC(redis_sock, "NOGROUP"))
    {
        REDIS_THROW_EXCEPTION( ZSTR_VAL(redis_sock->err), 0);
    }
}
