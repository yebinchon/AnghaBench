
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* certReq; } ;
struct TYPE_4__ {int * certReqId; } ;
typedef TYPE_2__ OSSL_CRMF_MSG ;


 int ASN1_INTEGER_set (int *,int) ;
 int CRMF_F_OSSL_CRMF_MSG_SET_CERTREQID ;
 int CRMF_R_NULL_ARGUMENT ;
 int CRMFerr (int ,int ) ;

int OSSL_CRMF_MSG_set_certReqId(OSSL_CRMF_MSG *crm, int rid)
{
    if (crm == ((void*)0) || crm->certReq == ((void*)0) || crm->certReq->certReqId == ((void*)0)) {
        CRMFerr(CRMF_F_OSSL_CRMF_MSG_SET_CERTREQID, CRMF_R_NULL_ARGUMENT);
        return 0;
    }

    return ASN1_INTEGER_set(crm->certReq->certReqId, rid);
}
