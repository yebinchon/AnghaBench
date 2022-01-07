
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINECRYPT_CERTSTORE ;
typedef int HCRYPTPROV ;
typedef int DWORD ;


 int CERT_SYSTEM_STORE_RELOCATE_FLAG ;
 int FIXME (char*,int ,int,void const*) ;
 void const* debugstr_w (void const*) ;

__attribute__((used)) static WINECRYPT_CERTSTORE *CRYPT_PhysOpenStoreW(HCRYPTPROV hCryptProv,
 DWORD dwFlags, const void *pvPara)
{
    if (dwFlags & CERT_SYSTEM_STORE_RELOCATE_FLAG)
        FIXME("(%ld, %08x, %p): stub\n", hCryptProv, dwFlags, pvPara);
    else
        FIXME("(%ld, %08x, %s): stub\n", hCryptProv, dwFlags,
         debugstr_w(pvPara));
    return ((void*)0);
}
