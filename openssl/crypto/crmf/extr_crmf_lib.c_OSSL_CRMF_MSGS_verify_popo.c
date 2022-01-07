
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int X509_PUBKEY ;
struct TYPE_13__ {TYPE_3__* certTemplate; int * publicKey; } ;
struct TYPE_12__ {TYPE_7__* certReq; TYPE_2__* popo; } ;
struct TYPE_11__ {int signature; int algorithmIdentifier; TYPE_7__* poposkInput; } ;
struct TYPE_10__ {int * subject; int * publicKey; } ;
struct TYPE_8__ {TYPE_4__* signature; } ;
struct TYPE_9__ {int type; TYPE_1__ value; } ;
typedef TYPE_4__ OSSL_CRMF_POPOSIGNINGKEY ;
typedef int OSSL_CRMF_MSGS ;
typedef TYPE_5__ OSSL_CRMF_MSG ;


 int ASN1_ITEM_rptr (int ) ;
 int ASN1_item_verify (int ,int ,int ,TYPE_7__*,int ) ;
 int CRMF_F_OSSL_CRMF_MSGS_VERIFY_POPO ;
 int CRMF_R_NULL_ARGUMENT ;
 int CRMF_R_UNSUPPORTED_POPO_METHOD ;
 int CRMF_R_UNSUPPORTED_POPO_NOT_ACCEPTED ;
 int CRMFerr (int ,int ) ;
 int OSSL_CRMF_CERTREQUEST ;
 int OSSL_CRMF_POPOSIGNINGKEYINPUT ;




 int X509_PUBKEY_cmp (int *,int *) ;
 int X509_PUBKEY_get0 (int *) ;
 TYPE_5__* sk_OSSL_CRMF_MSG_value (int const*,int) ;

int OSSL_CRMF_MSGS_verify_popo(const OSSL_CRMF_MSGS *reqs,
                               int rid, int acceptRAVerified)
{
    OSSL_CRMF_MSG *req = ((void*)0);
    X509_PUBKEY *pubkey = ((void*)0);
    OSSL_CRMF_POPOSIGNINGKEY *sig = ((void*)0);

    if (reqs == ((void*)0)
            || (req = sk_OSSL_CRMF_MSG_value(reqs, rid)) == ((void*)0)
            || req->popo == ((void*)0)) {
        CRMFerr(CRMF_F_OSSL_CRMF_MSGS_VERIFY_POPO,
                CRMF_R_NULL_ARGUMENT);
        return 0;
    }

    switch (req->popo->type) {
    case 129:
        if (acceptRAVerified)
            return 1;
        break;
    case 128:
        pubkey = req->certReq->certTemplate->publicKey;
        sig = req->popo->value.signature;
        if (sig->poposkInput != ((void*)0)) {





            if (pubkey == ((void*)0)
                    || sig->poposkInput->publicKey == ((void*)0)
                    || X509_PUBKEY_cmp(pubkey, sig->poposkInput->publicKey)
                    || ASN1_item_verify(
                           ASN1_ITEM_rptr(OSSL_CRMF_POPOSIGNINGKEYINPUT),
                           sig->algorithmIdentifier, sig->signature,
                           sig->poposkInput, X509_PUBKEY_get0(pubkey)) < 1)
                break;
        } else {
            if (pubkey == ((void*)0)
                    || req->certReq->certTemplate->subject == ((void*)0)
                    || ASN1_item_verify(ASN1_ITEM_rptr(OSSL_CRMF_CERTREQUEST),
                                    sig->algorithmIdentifier, sig->signature,
                                    req->certReq,
                                    X509_PUBKEY_get0(pubkey)) < 1)
                break;
        }
        return 1;
    case 130:






    case 131:
    default:
        CRMFerr(CRMF_F_OSSL_CRMF_MSGS_VERIFY_POPO,
                CRMF_R_UNSUPPORTED_POPO_METHOD);
        return 0;
    }
    CRMFerr(CRMF_F_OSSL_CRMF_MSGS_VERIFY_POPO,
            CRMF_R_UNSUPPORTED_POPO_NOT_ACCEPTED);
    return 0;
}
