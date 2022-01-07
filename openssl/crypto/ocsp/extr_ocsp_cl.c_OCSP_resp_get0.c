
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int responses; } ;
struct TYPE_5__ {TYPE_1__ tbsResponseData; } ;
typedef int OCSP_SINGLERESP ;
typedef TYPE_2__ OCSP_BASICRESP ;


 int * sk_OCSP_SINGLERESP_value (int ,int) ;

OCSP_SINGLERESP *OCSP_resp_get0(OCSP_BASICRESP *bs, int idx)
{
    if (!bs)
        return ((void*)0);
    return sk_OCSP_SINGLERESP_value(bs->tbsResponseData.responses, idx);
}
