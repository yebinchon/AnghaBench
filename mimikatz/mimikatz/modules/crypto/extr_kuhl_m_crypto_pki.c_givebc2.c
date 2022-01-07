
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fCA; } ;
struct TYPE_6__ {int Value; int pszObjId; int fCritical; } ;
typedef TYPE_1__* PCERT_EXTENSION ;
typedef TYPE_2__* PCERT_BASIC_CONSTRAINTS2_INFO ;
typedef int BOOL ;


 int kuhl_m_crypto_c_sc_auth_quickEncode (int ,TYPE_2__*,int *) ;
 int szOID_BASIC_CONSTRAINTS2 ;

BOOL givebc2(PCERT_EXTENSION pCertExtension, PCERT_BASIC_CONSTRAINTS2_INFO info)
{
 pCertExtension->pszObjId = szOID_BASIC_CONSTRAINTS2;
 pCertExtension->fCritical = info->fCA;
 return kuhl_m_crypto_c_sc_auth_quickEncode(pCertExtension->pszObjId, info, &pCertExtension->Value);
}
