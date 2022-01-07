
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pem_password_cb ;
struct TYPE_3__ {int * default_passwd_callback; } ;
typedef TYPE_1__ SSL ;



void SSL_set_default_passwd_cb(SSL *s, pem_password_cb *cb)
{
    s->default_passwd_callback = cb;
}
