
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int handle_t ;
struct TYPE_2__ {int * Format; } ;
typedef int PMIDL_TYPE_PICKLING_INFO ;
typedef int PFORMAT_STRING ;
typedef int PCLAIMS_SET ;


 int Claims_StubDesc ;
 TYPE_1__ Claims__MIDL_TypeFormatString ;
 size_t NdrMesTypeAlignSize2 (int ,int ,int *,int ,int *) ;
 int __MIDL_TypePicklingInfo ;

size_t PCLAIMS_SET_AlignSize(handle_t _MidlEsHandle, PCLAIMS_SET * _pType)
{
    return NdrMesTypeAlignSize2(_MidlEsHandle, (PMIDL_TYPE_PICKLING_INFO) &__MIDL_TypePicklingInfo, &Claims_StubDesc, (PFORMAT_STRING ) &Claims__MIDL_TypeFormatString.Format[2], _pType);
}
