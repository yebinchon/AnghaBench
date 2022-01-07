
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_context {int hHash; int hCryptProv; } ;
typedef struct hash_context* DWORD ;
typedef scalar_t__ BOOL ;
typedef int ALG_ID ;


 scalar_t__ CryptCreateHash (int ,int ,int ,int ,int *) ;
 scalar_t__ CryptDestroyHash (int ) ;
 struct hash_context* GetLastError () ;
 int error (char*,struct hash_context*) ;

void
rdssl_hash_clear(void* hash_info, ALG_ID id)
{
    struct hash_context *info = hash_info;
    BOOL ret;
    DWORD dwErr;
    if (!info || !info->hHash || !info->hCryptProv)
    {
        error("rdssl_hash_clear %p\n", info);
        return;
    }
    ret = CryptDestroyHash(info->hHash);
    if (!ret)
    {
        dwErr = GetLastError();
        error("CryptDestroyHash failed with %lx\n", dwErr);
        return;
    }
    ret = CryptCreateHash(info->hCryptProv,
                          id,
                          0,
                          0,
                          &info->hHash);
    if (!ret)
    {
        dwErr = GetLastError();
        error("CryptCreateHash failed with %lx\n", dwErr);
    }
}
