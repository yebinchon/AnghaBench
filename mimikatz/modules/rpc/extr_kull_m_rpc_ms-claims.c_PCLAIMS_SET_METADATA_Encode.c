
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int handle_t ;
struct TYPE_2__ {int * Format; } ;
typedef int PMIDL_TYPE_PICKLING_INFO ;
typedef int PFORMAT_STRING ;
typedef int PCLAIMS_SET_METADATA ;


 int Claims_StubDesc ;
 TYPE_1__ Claims__MIDL_TypeFormatString ;
 int NdrMesTypeEncode2 (int ,int ,int *,int ,int *) ;
 size_t _Claims_MIDL_TYPE_FORMAT_OFFSET ;
 int __MIDL_TypePicklingInfo ;

void PCLAIMS_SET_METADATA_Encode(handle_t _MidlEsHandle, PCLAIMS_SET_METADATA * _pType)
{
    NdrMesTypeEncode2(_MidlEsHandle, (PMIDL_TYPE_PICKLING_INFO) &__MIDL_TypePicklingInfo, &Claims_StubDesc, (PFORMAT_STRING) &Claims__MIDL_TypeFormatString.Format[_Claims_MIDL_TYPE_FORMAT_OFFSET], _pType);
}
