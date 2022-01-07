
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t cPolicyInfo; TYPE_2__* rgPolicyInfo; } ;
struct TYPE_6__ {size_t cPolicyQualifier; TYPE_1__* rgPolicyQualifier; } ;
struct TYPE_5__ {int Qualifier; int pszPolicyQualifierId; } ;
typedef int LPCSTR ;
typedef size_t DWORD ;
typedef int CRYPT_OBJID_BLOB ;
typedef TYPE_3__ CERT_POLICIES_INFO ;


 int strcmp (int ,int ) ;

__attribute__((used)) static CRYPT_OBJID_BLOB *find_policy_qualifier(CERT_POLICIES_INFO *policies,
 LPCSTR policyOid)
{
    CRYPT_OBJID_BLOB *ret = ((void*)0);
    DWORD i;

    for (i = 0; !ret && i < policies->cPolicyInfo; i++)
    {
        DWORD j;

        for (j = 0; !ret && j < policies->rgPolicyInfo[i].cPolicyQualifier; j++)
            if (!strcmp(policies->rgPolicyInfo[i].rgPolicyQualifier[j].
             pszPolicyQualifierId, policyOid))
                ret = &policies->rgPolicyInfo[i].rgPolicyQualifier[j].
                 Qualifier;
    }
    return ret;
}
