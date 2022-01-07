
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* certReq; } ;
struct TYPE_4__ {int * certTemplate; } ;
typedef TYPE_2__ OSSL_CRMF_MSG ;
typedef int OSSL_CRMF_CERTTEMPLATE ;


 int CRMF_F_OSSL_CRMF_MSG_GET0_TMPL ;
 int CRMF_R_NULL_ARGUMENT ;
 int CRMFerr (int ,int ) ;

OSSL_CRMF_CERTTEMPLATE *OSSL_CRMF_MSG_get0_tmpl(const OSSL_CRMF_MSG *crm)
{
    if (crm == ((void*)0) || crm->certReq == ((void*)0)) {
        CRMFerr(CRMF_F_OSSL_CRMF_MSG_GET0_TMPL, CRMF_R_NULL_ARGUMENT);
        return ((void*)0);
    }
    return crm->certReq->certTemplate;
}
