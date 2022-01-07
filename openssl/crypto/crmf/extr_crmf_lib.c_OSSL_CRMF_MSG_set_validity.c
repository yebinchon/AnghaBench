
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_6__ {TYPE_1__* validity; } ;
struct TYPE_5__ {int * notAfter; int * notBefore; } ;
typedef TYPE_1__ OSSL_CRMF_OPTIONALVALIDITY ;
typedef int OSSL_CRMF_MSG ;
typedef TYPE_2__ OSSL_CRMF_CERTTEMPLATE ;
typedef int ASN1_TIME ;


 int ASN1_TIME_free (int *) ;
 int * ASN1_TIME_set (int *,scalar_t__) ;
 int CRMF_F_OSSL_CRMF_MSG_SET_VALIDITY ;
 int CRMF_R_NULL_ARGUMENT ;
 int CRMFerr (int ,int ) ;
 TYPE_2__* OSSL_CRMF_MSG_get0_tmpl (int *) ;
 TYPE_1__* OSSL_CRMF_OPTIONALVALIDITY_new () ;

int OSSL_CRMF_MSG_set_validity(OSSL_CRMF_MSG *crm, time_t from, time_t to)
{
    OSSL_CRMF_OPTIONALVALIDITY *vld = ((void*)0);
    ASN1_TIME *from_asn = ((void*)0);
    ASN1_TIME *to_asn = ((void*)0);
    OSSL_CRMF_CERTTEMPLATE *tmpl = OSSL_CRMF_MSG_get0_tmpl(crm);

    if (tmpl == ((void*)0)) {
        CRMFerr(CRMF_F_OSSL_CRMF_MSG_SET_VALIDITY, CRMF_R_NULL_ARGUMENT);
        return 0;
    }

    if (from != 0 && ((from_asn = ASN1_TIME_set(((void*)0), from)) == ((void*)0)))
        goto err;
    if (to != 0 && ((to_asn = ASN1_TIME_set(((void*)0), to)) == ((void*)0)))
        goto err;
    if ((vld = OSSL_CRMF_OPTIONALVALIDITY_new()) == ((void*)0))
        goto err;

    vld->notBefore = from_asn;
    vld->notAfter = to_asn;

    tmpl->validity = vld;

    return 1;
 err:
    ASN1_TIME_free(from_asn);
    ASN1_TIME_free(to_asn);
    return 0;
}
