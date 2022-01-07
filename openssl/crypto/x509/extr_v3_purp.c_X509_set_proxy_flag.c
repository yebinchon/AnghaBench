
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ex_flags; } ;
typedef TYPE_1__ X509 ;


 int EXFLAG_PROXY ;

void X509_set_proxy_flag(X509 *x)
{
    x->ex_flags |= EXFLAG_PROXY;
}
