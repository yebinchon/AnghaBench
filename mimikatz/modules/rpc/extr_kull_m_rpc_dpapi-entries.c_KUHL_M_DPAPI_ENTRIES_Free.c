
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int handle_t ;
struct TYPE_2__ {int * Format; } ;
typedef int PMIDL_TYPE_PICKLING_INFO ;
typedef int PFORMAT_STRING ;
typedef int KUHL_M_DPAPI_ENTRIES ;


 int DPAPIEntries_StubDesc ;
 int NdrMesTypeFree2 (int ,int ,int *,int ,int *) ;
 int __MIDL_TypePicklingInfo ;
 size_t _dpapi2Dentries_MIDL_TYPE_FORMAT_OFFSET ;
 TYPE_1__ dpapi2Dentries__MIDL_TypeFormatString ;

void KUHL_M_DPAPI_ENTRIES_Free(handle_t _MidlEsHandle, KUHL_M_DPAPI_ENTRIES * _pType)
{
    NdrMesTypeFree2(_MidlEsHandle, (PMIDL_TYPE_PICKLING_INFO) &__MIDL_TypePicklingInfo, &DPAPIEntries_StubDesc, (PFORMAT_STRING) &dpapi2Dentries__MIDL_TypeFormatString.Format[_dpapi2Dentries_MIDL_TYPE_FORMAT_OFFSET], _pType);
}
