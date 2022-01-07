
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_7__ {int * byKey; int * byName; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ value; } ;
struct TYPE_6__ {TYPE_3__ responderId; } ;
struct TYPE_9__ {TYPE_1__ tbsResponseData; } ;
typedef TYPE_3__ OCSP_RESPID ;
typedef TYPE_4__ OCSP_BASICRESP ;
typedef int ASN1_OCTET_STRING ;


 scalar_t__ V_OCSP_RESPID_KEY ;
 scalar_t__ V_OCSP_RESPID_NAME ;

int OCSP_resp_get0_id(const OCSP_BASICRESP *bs,
                      const ASN1_OCTET_STRING **pid,
                      const X509_NAME **pname)
{
    const OCSP_RESPID *rid = &bs->tbsResponseData.responderId;

    if (rid->type == V_OCSP_RESPID_NAME) {
        *pname = rid->value.byName;
        *pid = ((void*)0);
    } else if (rid->type == V_OCSP_RESPID_KEY) {
        *pid = rid->value.byKey;
        *pname = ((void*)0);
    } else {
        return 0;
    }
    return 1;
}
