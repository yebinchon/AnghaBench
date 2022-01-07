
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * subsequentMessage; } ;
struct TYPE_13__ {TYPE_1__ value; int type; } ;
struct TYPE_12__ {TYPE_3__* popo; int certReq; } ;
struct TYPE_10__ {TYPE_7__* keyEncipherment; int * signature; int * raVerified; } ;
struct TYPE_11__ {int type; TYPE_2__ value; } ;
typedef int OSSL_CRMF_POPOSIGNINGKEY ;
typedef TYPE_3__ OSSL_CRMF_POPO ;
typedef TYPE_4__ OSSL_CRMF_MSG ;
typedef int EVP_PKEY ;
typedef int ASN1_INTEGER ;


 int * ASN1_INTEGER_new () ;
 int ASN1_INTEGER_set (int *,int ) ;
 int * ASN1_NULL_new () ;
 int CRMF_F_OSSL_CRMF_MSG_CREATE_POPO ;
 int CRMF_R_NULL_ARGUMENT ;
 int CRMF_R_UNSUPPORTED_METHOD_FOR_CREATING_POPO ;
 int CRMF_poposigningkey_init (int *,int ,int *,int) ;
 int CRMFerr (int ,int ) ;
 int OSSL_CRMF_POPOPRIVKEY_SUBSEQUENTMESSAGE ;
 TYPE_7__* OSSL_CRMF_POPOPRIVKEY_new () ;
 int OSSL_CRMF_POPOSIGNINGKEY_free (int *) ;
 int * OSSL_CRMF_POPOSIGNINGKEY_new () ;

 int OSSL_CRMF_POPO_NONE ;


 int OSSL_CRMF_POPO_free (TYPE_3__*) ;
 TYPE_3__* OSSL_CRMF_POPO_new () ;
 int OSSL_CRMF_SUBSEQUENTMESSAGE_ENCRCERT ;

int OSSL_CRMF_MSG_create_popo(OSSL_CRMF_MSG *crm, EVP_PKEY *pkey,
                              int dgst, int ppmtd)
{
    OSSL_CRMF_POPO *pp = ((void*)0);
    ASN1_INTEGER *tag = ((void*)0);

    if (crm == ((void*)0) || (ppmtd == 128 && pkey == ((void*)0))) {
        CRMFerr(CRMF_F_OSSL_CRMF_MSG_CREATE_POPO, CRMF_R_NULL_ARGUMENT);
        return 0;
    }

    if (ppmtd == OSSL_CRMF_POPO_NONE)
        goto end;
    if ((pp = OSSL_CRMF_POPO_new()) == ((void*)0))
        goto err;
    pp->type = ppmtd;

    switch (ppmtd) {
    case 129:
        if ((pp->value.raVerified = ASN1_NULL_new()) == ((void*)0))
            goto err;
        break;

    case 128:
        {
            OSSL_CRMF_POPOSIGNINGKEY *ps = OSSL_CRMF_POPOSIGNINGKEY_new();
            if (ps == ((void*)0)
                    || !CRMF_poposigningkey_init(ps, crm->certReq, pkey, dgst)){
                OSSL_CRMF_POPOSIGNINGKEY_free(ps);
                goto err;
            }
            pp->value.signature = ps;
        }
        break;

    case 130:
        if ((pp->value.keyEncipherment = OSSL_CRMF_POPOPRIVKEY_new()) == ((void*)0))
            goto err;
        tag = ASN1_INTEGER_new();
        pp->value.keyEncipherment->type =
            OSSL_CRMF_POPOPRIVKEY_SUBSEQUENTMESSAGE;
        pp->value.keyEncipherment->value.subsequentMessage = tag;
        if (tag == ((void*)0)
                || !ASN1_INTEGER_set(tag, OSSL_CRMF_SUBSEQUENTMESSAGE_ENCRCERT))
            goto err;
        break;

    default:
        CRMFerr(CRMF_F_OSSL_CRMF_MSG_CREATE_POPO,
                CRMF_R_UNSUPPORTED_METHOD_FOR_CREATING_POPO);
        goto err;
    }

 end:
    OSSL_CRMF_POPO_free(crm->popo);
    crm->popo = pp;

    return 1;
 err:
    OSSL_CRMF_POPO_free(pp);
    return 0;
}
