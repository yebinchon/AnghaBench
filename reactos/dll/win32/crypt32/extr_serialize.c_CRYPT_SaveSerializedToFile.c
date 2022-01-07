
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HCERTSTORE ;
typedef int DWORD ;
typedef int BOOL ;


 int CRYPT_WriteSerializedStoreToFile (void*,int ) ;

__attribute__((used)) static BOOL CRYPT_SaveSerializedToFile(HCERTSTORE store,
 DWORD dwMsgAndCertEncodingType, void *handle)
{
    return CRYPT_WriteSerializedStoreToFile(handle, store);
}
