
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pbData; } ;
struct TYPE_5__ {TYPE_1__ Value; } ;
typedef TYPE_2__* PCERT_EXTENSION ;


 int LocalFree (scalar_t__) ;

__inline void kuhl_m_crypto_c_sc_auth_Ext_Free(PCERT_EXTENSION pCertExtension)
{
 if(pCertExtension->Value.pbData)
  LocalFree(pCertExtension->Value.pbData);
}
