
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int handle_t ;
struct TYPE_2__ {int * Format; } ;
typedef int PMIDL_TYPE_PICKLING_INFO ;
typedef int PKIWI_CREDENTIAL_KEYS ;
typedef int PFORMAT_STRING ;


 int NdrMesTypeDecode2 (int ,int ,int *,int ,int *) ;
 int __MIDL_TypePicklingInfo ;
 TYPE_1__ ms_credentialkeys__MIDL_TypeFormatString ;
 int mscredentialkeys_StubDesc ;

void CredentialKeys_Decode(handle_t _MidlEsHandle, PKIWI_CREDENTIAL_KEYS * _pType)
{
 NdrMesTypeDecode2(_MidlEsHandle, (PMIDL_TYPE_PICKLING_INFO) &__MIDL_TypePicklingInfo, &mscredentialkeys_StubDesc, (PFORMAT_STRING) &ms_credentialkeys__MIDL_TypeFormatString.Format[2], _pType);
}
