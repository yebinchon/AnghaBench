
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_context {int hHash; int hCryptProv; } ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ CryptGetHashParam (int ,int ,int *,int *,int ) ;
 int GetLastError () ;
 int HP_HASHVAL ;
 int error (char*,void*,...) ;

void
rdssl_hash_complete(void* hash_info, char* data)
{
    struct hash_context *info = hash_info;
    BOOL ret;
    DWORD dwErr, dwDataLen;
    if (!info || !info->hHash || !info->hCryptProv || !data)
    {
        error("rdssl_hash_complete %p %p\n", hash_info, data);
        return;
    }
    ret = CryptGetHashParam(info->hHash,
                            HP_HASHVAL,
                            ((void*)0),
                            &dwDataLen,
                            0);
    if (!ret)
    {
        dwErr = GetLastError();
        error("CryptGetHashParam failed with %lx\n", dwErr);
        return;
    }
    ret = CryptGetHashParam(info->hHash,
                            HP_HASHVAL,
                            (BYTE *)data,
                            &dwDataLen,
                            0);
    if (!ret)
    {
        dwErr = GetLastError();
        error("CryptGetHashParam failed with %lx\n", dwErr);
    }
}
