
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int handle_t ;
struct TYPE_2__ {int * Format; } ;
typedef int PPAC_CREDENTIAL_DATA ;
typedef int PMIDL_TYPE_PICKLING_INFO ;
typedef int PFORMAT_STRING ;


 int NdrMesTypeDecode2 (int ,int ,int *,int ,int *) ;
 int __MIDL_TypePicklingInfo ;
 size_t _ms_pac_PPAC_CREDENTIAL_DATA_idx ;
 int msKrbPac_StubDesc ;
 TYPE_1__ ms_pac__MIDL_TypeFormatString ;

void PPAC_CREDENTIAL_DATA_Decode(handle_t _MidlEsHandle, PPAC_CREDENTIAL_DATA * _pType)
{
    NdrMesTypeDecode2(_MidlEsHandle, (PMIDL_TYPE_PICKLING_INFO) &__MIDL_TypePicklingInfo, &msKrbPac_StubDesc, (PFORMAT_STRING) &ms_pac__MIDL_TypeFormatString.Format[_ms_pac_PPAC_CREDENTIAL_DATA_idx], _pType);
}
