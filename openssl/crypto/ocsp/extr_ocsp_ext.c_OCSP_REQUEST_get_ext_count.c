
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int requestExtensions; } ;
struct TYPE_5__ {TYPE_1__ tbsRequest; } ;
typedef TYPE_2__ OCSP_REQUEST ;


 int X509v3_get_ext_count (int ) ;

int OCSP_REQUEST_get_ext_count(OCSP_REQUEST *x)
{
    return X509v3_get_ext_count(x->tbsRequest.requestExtensions);
}
