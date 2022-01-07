
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int action; } ;
typedef TYPE_1__ OSSL_CRMF_PKIPUBLICATIONINFO ;


 int ASN1_INTEGER_set (int ,int) ;
 int CRMF_F_OSSL_CRMF_MSG_SET_PKIPUBLICATIONINFO_ACTION ;
 int CRMFerr (int ,int ) ;
 int ERR_R_PASSED_INVALID_ARGUMENT ;
 int OSSL_CRMF_PUB_ACTION_DONTPUBLISH ;
 int OSSL_CRMF_PUB_ACTION_PLEASEPUBLISH ;

int OSSL_CRMF_MSG_set_PKIPublicationInfo_action(
                                 OSSL_CRMF_PKIPUBLICATIONINFO *pi, int action)
{
    if (pi == ((void*)0)
            || action < OSSL_CRMF_PUB_ACTION_DONTPUBLISH
            || action > OSSL_CRMF_PUB_ACTION_PLEASEPUBLISH) {
        CRMFerr(CRMF_F_OSSL_CRMF_MSG_SET_PKIPUBLICATIONINFO_ACTION,
                ERR_R_PASSED_INVALID_ARGUMENT);
        return 0;
    }

    return ASN1_INTEGER_set(pi->action, action);
}
