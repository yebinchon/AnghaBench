
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pubInfos; } ;
typedef int OSSL_CRMF_SINGLEPUBINFO ;
typedef TYPE_1__ OSSL_CRMF_PKIPUBLICATIONINFO ;


 int CRMF_F_OSSL_CRMF_MSG_PKIPUBLICATIONINFO_PUSH0_SINGLEPUBINFO ;
 int CRMF_R_NULL_ARGUMENT ;
 int CRMFerr (int ,int ) ;
 int * sk_OSSL_CRMF_SINGLEPUBINFO_new_null () ;
 int sk_OSSL_CRMF_SINGLEPUBINFO_push (int *,int *) ;

int OSSL_CRMF_MSG_PKIPublicationInfo_push0_SinglePubInfo(
                                 OSSL_CRMF_PKIPUBLICATIONINFO *pi,
                                 OSSL_CRMF_SINGLEPUBINFO *spi)
{
    if (pi == ((void*)0) || spi == ((void*)0)) {
        CRMFerr(CRMF_F_OSSL_CRMF_MSG_PKIPUBLICATIONINFO_PUSH0_SINGLEPUBINFO,
                CRMF_R_NULL_ARGUMENT);
        return 0;
    }
    if (pi->pubInfos == ((void*)0))
        pi->pubInfos = sk_OSSL_CRMF_SINGLEPUBINFO_new_null();
    if (pi->pubInfos == ((void*)0))
        return 0;

    return sk_OSSL_CRMF_SINGLEPUBINFO_push(pi->pubInfos, spi);
}
