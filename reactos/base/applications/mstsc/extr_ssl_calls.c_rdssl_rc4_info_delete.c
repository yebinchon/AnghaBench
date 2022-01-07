
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc4_state {scalar_t__ hCryptProv; scalar_t__ hKey; } ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CryptDestroyKey (scalar_t__) ;
 scalar_t__ CryptReleaseContext (scalar_t__,int ) ;
 int GetLastError () ;
 scalar_t__ TRUE ;
 int error (char*,int ) ;
 int g_free (void*) ;

void
rdssl_rc4_info_delete(void* rc4_info)
{
    struct rc4_state *info = rc4_info;
    BOOL ret = TRUE;
    DWORD dwErr;
    if (!info)
    {

        return;
    }
    if (info->hKey)
    {
        ret = CryptDestroyKey(info->hKey);
        if (!ret)
        {
            dwErr = GetLastError();
            error("CryptDestroyKey failed with %lx\n", dwErr);
        }
    }
    if (info->hCryptProv)
    {
        ret = CryptReleaseContext(info->hCryptProv, 0);
        if (!ret)
        {
            dwErr = GetLastError();
            error("CryptReleaseContext failed with %lx\n", dwErr);
        }
    }
    g_free(rc4_info);
}
