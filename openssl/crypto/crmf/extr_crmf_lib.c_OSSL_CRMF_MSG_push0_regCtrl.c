
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* certReq; } ;
struct TYPE_4__ {int * controls; } ;
typedef TYPE_2__ OSSL_CRMF_MSG ;
typedef int OSSL_CRMF_ATTRIBUTETYPEANDVALUE ;


 int CRMF_F_OSSL_CRMF_MSG_PUSH0_REGCTRL ;
 int CRMF_R_NULL_ARGUMENT ;
 int CRMFerr (int ,int ) ;
 int sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free (int *) ;
 int * sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new_null () ;
 int sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_push (int *,int *) ;

__attribute__((used)) static int OSSL_CRMF_MSG_push0_regCtrl(OSSL_CRMF_MSG *crm,
                                       OSSL_CRMF_ATTRIBUTETYPEANDVALUE *ctrl)
{
    int new = 0;

    if (crm == ((void*)0) || crm->certReq == ((void*)0) || ctrl == ((void*)0)) {
        CRMFerr(CRMF_F_OSSL_CRMF_MSG_PUSH0_REGCTRL, CRMF_R_NULL_ARGUMENT);
        return 0;
    }

    if (crm->certReq->controls == ((void*)0)) {
        crm->certReq->controls = sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_new_null();
        if (crm->certReq->controls == ((void*)0))
            goto err;
        new = 1;
    }
    if (!sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_push(crm->certReq->controls, ctrl))
        goto err;

    return 1;
 err:
    if (new != 0) {
        sk_OSSL_CRMF_ATTRIBUTETYPEANDVALUE_free(crm->certReq->controls);
        crm->certReq->controls = ((void*)0);
    }
    return 0;
}
