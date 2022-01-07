
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long verify_result; } ;
typedef TYPE_1__ SSL ;



long SSL_get_verify_result(const SSL *ssl)
{
    return ssl->verify_result;
}
