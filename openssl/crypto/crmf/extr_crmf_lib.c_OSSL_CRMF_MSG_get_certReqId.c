
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* certReq; } ;
struct TYPE_4__ {int certReqId; } ;
typedef TYPE_2__ OSSL_CRMF_MSG ;


 int CRMF_F_OSSL_CRMF_MSG_GET_CERTREQID ;
 int CRMF_R_NULL_ARGUMENT ;
 int CRMFerr (int ,int ) ;
 int crmf_asn1_get_int (int ) ;

int OSSL_CRMF_MSG_get_certReqId(OSSL_CRMF_MSG *crm)
{
    if (crm == ((void*)0) || crm->certReq == ((void*)0)) {
        CRMFerr(CRMF_F_OSSL_CRMF_MSG_GET_CERTREQID, CRMF_R_NULL_ARGUMENT);
        return -1;
    }
    return crmf_asn1_get_int(crm->certReq->certReqId);
}
