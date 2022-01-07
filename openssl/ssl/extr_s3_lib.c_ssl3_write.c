
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ renegotiate; } ;
struct TYPE_9__ {TYPE_2__* method; TYPE_1__ s3; } ;
struct TYPE_8__ {int (* ssl_write_bytes ) (TYPE_3__*,int ,void const*,size_t,size_t*) ;} ;
typedef TYPE_3__ SSL ;


 int SSL3_RT_APPLICATION_DATA ;
 int clear_sys_error () ;
 int ssl3_renegotiate_check (TYPE_3__*,int ) ;
 int stub1 (TYPE_3__*,int ,void const*,size_t,size_t*) ;

int ssl3_write(SSL *s, const void *buf, size_t len, size_t *written)
{
    clear_sys_error();
    if (s->s3.renegotiate)
        ssl3_renegotiate_check(s, 0);

    return s->method->ssl_write_bytes(s, SSL3_RT_APPLICATION_DATA, buf, len,
                                      written);
}
