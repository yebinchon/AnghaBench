
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pubLocation; int pubMethod; } ;
typedef TYPE_1__ OSSL_CRMF_SINGLEPUBINFO ;
typedef int GENERAL_NAME ;


 int ASN1_INTEGER_set (int ,int) ;
 int CRMF_F_OSSL_CRMF_MSG_SET0_SINGLEPUBINFO ;
 int CRMFerr (int ,int ) ;
 int ERR_R_PASSED_INVALID_ARGUMENT ;
 int GENERAL_NAME_free (int *) ;
 int OSSL_CRMF_PUB_METHOD_DONTCARE ;
 int OSSL_CRMF_PUB_METHOD_LDAP ;

int OSSL_CRMF_MSG_set0_SinglePubInfo(OSSL_CRMF_SINGLEPUBINFO *spi,
                                     int method, GENERAL_NAME *nm)
{
    if (spi == ((void*)0)
            || method < OSSL_CRMF_PUB_METHOD_DONTCARE
            || method > OSSL_CRMF_PUB_METHOD_LDAP) {
        CRMFerr(CRMF_F_OSSL_CRMF_MSG_SET0_SINGLEPUBINFO,
                ERR_R_PASSED_INVALID_ARGUMENT);
        return 0;
    }

    if (!ASN1_INTEGER_set(spi->pubMethod, method))
        return 0;
    GENERAL_NAME_free(spi->pubLocation);
    spi->pubLocation = nm;
    return 1;
}
