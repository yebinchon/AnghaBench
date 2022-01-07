
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bits ;
typedef int WORD ;
struct TYPE_6__ {int member_0; int member_2; int member_1; } ;
struct TYPE_5__ {int Value; int pszObjId; int fCritical; } ;
typedef TYPE_1__* PCERT_EXTENSION ;
typedef int PBYTE ;
typedef TYPE_2__ CRYPT_BIT_BLOB ;
typedef int BOOL ;


 int kuhl_m_crypto_c_sc_auth_quickEncode (int ,TYPE_2__*,int *) ;
 int szOID_KEY_USAGE ;

BOOL kuhl_m_crypto_c_sc_auth_Ext_KU(PCERT_EXTENSION pCertExtension, BOOL isCritical, WORD bits)
{
 CRYPT_BIT_BLOB bit = {sizeof(bits), (PBYTE) &bits, 5};
 pCertExtension->pszObjId = szOID_KEY_USAGE;
 pCertExtension->fCritical = isCritical;
 return kuhl_m_crypto_c_sc_auth_quickEncode(pCertExtension->pszObjId, &bit, &pCertExtension->Value);
}
