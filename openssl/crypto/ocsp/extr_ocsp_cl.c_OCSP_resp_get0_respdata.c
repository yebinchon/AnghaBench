
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const tbsResponseData; } ;
typedef int OCSP_RESPDATA ;
typedef TYPE_1__ OCSP_BASICRESP ;



const OCSP_RESPDATA *OCSP_resp_get0_respdata(const OCSP_BASICRESP *bs)
{
    return &bs->tbsResponseData;
}
