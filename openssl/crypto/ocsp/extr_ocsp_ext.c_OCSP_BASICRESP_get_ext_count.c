
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int responseExtensions; } ;
struct TYPE_5__ {TYPE_1__ tbsResponseData; } ;
typedef TYPE_2__ OCSP_BASICRESP ;


 int X509v3_get_ext_count (int ) ;

int OCSP_BASICRESP_get_ext_count(OCSP_BASICRESP *x)
{
    return X509v3_get_ext_count(x->tbsResponseData.responseExtensions);
}
