
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ optionalSignature; } ;
typedef TYPE_1__ OCSP_REQUEST ;



int OCSP_request_is_signed(OCSP_REQUEST *req)
{
    if (req->optionalSignature)
        return 1;
    return 0;
}
