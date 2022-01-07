
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* UuidToStringFunc ) (int *,unsigned char**) ;
typedef scalar_t__ (* UuidCreateFunc ) (int *) ;
typedef int UUID ;
typedef int (* RpcStringFreeFunc ) (unsigned char**) ;
typedef scalar_t__ RPC_STATUS ;
typedef int LPCSTR ;
typedef scalar_t__ HMODULE ;
typedef int HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef scalar_t__ BOOL ;


 int AT_SIGNATURE ;
 int CRYPT_NEWKEYSET ;
 scalar_t__ CryptAcquireContextA (int *,int ,int ,int ,int ) ;
 int CryptDestroyKey (int ) ;
 scalar_t__ CryptGenKey (int ,int ,int ,int *) ;
 int FreeLibrary (scalar_t__) ;
 int GetProcAddress (scalar_t__,char*) ;
 scalar_t__ LoadLibraryA (char*) ;
 int MS_DEF_PROV_A ;
 int PROV_RSA_FULL ;
 scalar_t__ RPC_S_OK ;
 scalar_t__ RPC_S_UUID_LOCAL_ONLY ;

__attribute__((used)) static HCRYPTPROV CRYPT_CreateKeyProv(void)
{
    HCRYPTPROV hProv = 0;
    HMODULE rpcrt = LoadLibraryA("rpcrt4");

    if (rpcrt)
    {
        UuidCreateFunc uuidCreate = (UuidCreateFunc)GetProcAddress(rpcrt,
         "UuidCreate");
        UuidToStringFunc uuidToString = (UuidToStringFunc)GetProcAddress(rpcrt,
         "UuidToStringA");
        RpcStringFreeFunc rpcStringFree = (RpcStringFreeFunc)GetProcAddress(
         rpcrt, "RpcStringFreeA");

        if (uuidCreate && uuidToString && rpcStringFree)
        {
            UUID uuid;
            RPC_STATUS status = uuidCreate(&uuid);

            if (status == RPC_S_OK || status == RPC_S_UUID_LOCAL_ONLY)
            {
                unsigned char *uuidStr;

                status = uuidToString(&uuid, &uuidStr);
                if (status == RPC_S_OK)
                {
                    BOOL ret = CryptAcquireContextA(&hProv, (LPCSTR)uuidStr,
                     MS_DEF_PROV_A, PROV_RSA_FULL, CRYPT_NEWKEYSET);

                    if (ret)
                    {
                        HCRYPTKEY key;

                        ret = CryptGenKey(hProv, AT_SIGNATURE, 0, &key);
                        if (ret)
                            CryptDestroyKey(key);
                    }
                    rpcStringFree(&uuidStr);
                }
            }
        }
        FreeLibrary(rpcrt);
    }
    return hProv;
}
