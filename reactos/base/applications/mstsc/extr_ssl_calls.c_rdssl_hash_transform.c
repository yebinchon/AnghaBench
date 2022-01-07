
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_context {int hHash; int hCryptProv; } ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CryptHashData (int ,int *,int,int ) ;
 int GetLastError () ;
 int error (char*,void*,...) ;

void
rdssl_hash_transform(void* hash_info, char* data, int len)
{
    struct hash_context *info = hash_info;
    BOOL ret;
    DWORD dwErr;
    if (!info || !info->hHash || !info->hCryptProv || !data || !len)
    {
        error("rdssl_hash_transform %p %p %d\n", hash_info, data, len);
        return;
    }
    ret = CryptHashData(info->hHash,
                        (BYTE *)data,
                        len,
                        0);
    if (!ret)
    {
        dwErr = GetLastError();
        error("CryptHashData failed with %lx\n", dwErr);
    }
}
