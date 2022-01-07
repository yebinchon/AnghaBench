
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t cPolicyInfo; TYPE_1__* rgPolicyInfo; } ;
struct TYPE_4__ {int pszPolicyIdentifier; } ;
typedef size_t DWORD ;
typedef TYPE_2__ CERT_POLICIES_INFO ;
typedef int CERT_INFO ;


 size_t CERT_TRUST_INVALID_POLICY_CONSTRAINTS ;
 int FIXME (char*,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int szOID_ANY_CERT_POLICY ;

__attribute__((used)) static void CRYPT_CheckPolicies(const CERT_POLICIES_INFO *policies, CERT_INFO *cert,
 DWORD *errorStatus)
{
    DWORD i;

    for (i = 0; i < policies->cPolicyInfo; i++)
    {







        if (strcmp(policies->rgPolicyInfo[i].pszPolicyIdentifier,
         szOID_ANY_CERT_POLICY))
        {
            FIXME("unsupported policy %s\n",
             policies->rgPolicyInfo[i].pszPolicyIdentifier);
            *errorStatus |= CERT_TRUST_INVALID_POLICY_CONSTRAINTS;
        }
    }
}
