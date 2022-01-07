
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct X500TokenW {int dummy; } ;
typedef int PCERT_NAME_BLOB ;
typedef int LPCWSTR ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CRYPT_EncodeValueWithType (size_t,struct X500TokenW const*,int ,size_t const,int *) ;
 scalar_t__ FALSE ;

__attribute__((used)) static BOOL CRYPT_EncodeValue(DWORD dwCertEncodingType,
 const struct X500TokenW *value, PCERT_NAME_BLOB output, const DWORD *types,
 LPCWSTR *ppszError)
{
    DWORD i;
    BOOL ret;

    ret = FALSE;
    for (i = 0; !ret && types[i]; i++)
        ret = CRYPT_EncodeValueWithType(dwCertEncodingType, value, output,
         types[i], ppszError);
    return ret;
}
