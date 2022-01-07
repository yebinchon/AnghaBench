
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int dwErrorStatus; int dwInfoStatus; } ;
struct TYPE_8__ {int pCertInfo; } ;
struct TYPE_7__ {int cElement; TYPE_1__** rgpElement; int TrustStatus; } ;
struct TYPE_6__ {TYPE_4__ TrustStatus; TYPE_3__* pCertContext; } ;
typedef TYPE_2__* PCERT_SIMPLE_CHAIN ;
typedef int DWORD ;
typedef int CERT_NAME_CONSTRAINTS_INFO ;


 int CERT_TRUST_HAS_NOT_SUPPORTED_NAME_CONSTRAINT ;
 int CERT_TRUST_HAS_VALID_NAME_CONSTRAINTS ;
 int CRYPT_CheckNameConstraints (int *,int ,int*) ;
 int CRYPT_CombineTrustStatus (int *,TYPE_4__*) ;
 int * CRYPT_GetNameConstraints (int ) ;
 int CRYPT_IsCertificateSelfSigned (TYPE_3__*) ;
 int CRYPT_IsValidNameConstraint (int *) ;
 int LocalFree (int *) ;

__attribute__((used)) static void CRYPT_CheckChainNameConstraints(PCERT_SIMPLE_CHAIN chain)
{
    int i, j;
    for (i = chain->cElement - 1; i > 0; i--)
    {
        CERT_NAME_CONSTRAINTS_INFO *nameConstraints;

        if ((nameConstraints = CRYPT_GetNameConstraints(
         chain->rgpElement[i]->pCertContext->pCertInfo)))
        {
            if (!CRYPT_IsValidNameConstraint(nameConstraints))
                chain->rgpElement[i]->TrustStatus.dwErrorStatus |=
                 CERT_TRUST_HAS_NOT_SUPPORTED_NAME_CONSTRAINT;
            else
            {
                for (j = i - 1; j >= 0; j--)
                {
                    DWORD errorStatus = 0;




                    if (j == 0 || !CRYPT_IsCertificateSelfSigned(
                     chain->rgpElement[j]->pCertContext))
                    {
                        CRYPT_CheckNameConstraints(nameConstraints,
                         chain->rgpElement[j]->pCertContext->pCertInfo,
                         &errorStatus);
                        if (errorStatus)
                        {
                            chain->rgpElement[i]->TrustStatus.dwErrorStatus |=
                             errorStatus;
                            CRYPT_CombineTrustStatus(&chain->TrustStatus,
                             &chain->rgpElement[i]->TrustStatus);
                        }
                        else
                            chain->rgpElement[i]->TrustStatus.dwInfoStatus |=
                             CERT_TRUST_HAS_VALID_NAME_CONSTRAINTS;
                    }
                }
            }
            LocalFree(nameConstraints);
        }
    }
}
