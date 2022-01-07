
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int amask; } ;
typedef TYPE_1__ SSL_CERT_LOOKUP ;


 int disabled_auth_mask ;
 TYPE_1__* ssl_cert_lookup_by_idx (size_t) ;

int ssl_cert_is_disabled(size_t idx)
{
    const SSL_CERT_LOOKUP *cl = ssl_cert_lookup_by_idx(idx);

    if (cl == ((void*)0) || (cl->amask & disabled_auth_mask) != 0)
        return 1;
    return 0;
}
