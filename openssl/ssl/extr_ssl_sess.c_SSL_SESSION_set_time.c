
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long time; } ;
typedef TYPE_1__ SSL_SESSION ;



long SSL_SESSION_set_time(SSL_SESSION *s, long t)
{
    if (s == ((void*)0))
        return 0;
    s->time = t;
    return t;
}
