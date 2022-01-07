
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_context {scalar_t__ hCryptProv; scalar_t__ hHash; } ;


 int CryptDestroyHash (scalar_t__) ;
 int CryptReleaseContext (scalar_t__,int ) ;
 int g_free (void*) ;

void
rdssl_hash_info_delete(void* hash_info)
{
    struct hash_context *info = hash_info;
    if (!info)
    {

        return;
    }
    if (info->hHash)
    {
        CryptDestroyHash(info->hHash);
    }
    if (info->hCryptProv)
    {
        CryptReleaseContext(info->hCryptProv, 0);
    }
    g_free(hash_info);
}
