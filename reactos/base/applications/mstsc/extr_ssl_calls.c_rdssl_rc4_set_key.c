
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc4_state {scalar_t__ hKey; int hCryptProv; } ;
struct TYPE_2__ {scalar_t__ reserved; int bVersion; int bType; int aiKeyAlg; } ;
typedef TYPE_1__ PUBLICKEYSTRUC ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CALG_RC4 ;
 int CRYPT_EXPORTABLE ;
 int CUR_BLOB_VERSION ;
 int CryptDestroyKey (scalar_t__) ;
 int CryptImportKey (int ,int *,int,int ,int ,scalar_t__*) ;
 int GetLastError () ;
 int PLAINTEXTKEYBLOB ;
 int error (char*,...) ;
 int g_free (int *) ;
 int * g_malloc (int,int ) ;
 int memcpy (int *,char*,int) ;

void
rdssl_rc4_set_key(void* rc4_info, char* key, int len)
{
    struct rc4_state *info = rc4_info;
    BOOL ret;
    DWORD dwErr;
    BYTE * blob;
    PUBLICKEYSTRUC *desc;
    DWORD * keySize;
    BYTE * keyBuf;
    if (!rc4_info || !key || !len || !info->hCryptProv)
    {
        error("rdssl_rc4_set_key %p %p %d\n", rc4_info, key, len);
        return;
    }
    blob = g_malloc(sizeof(PUBLICKEYSTRUC) + sizeof(DWORD) + len, 0);
    if (!blob)
    {
        error("rdssl_rc4_set_key no memory\n");
        return;
    }
    desc = (PUBLICKEYSTRUC *)blob;
    keySize = (DWORD *)(blob + sizeof(PUBLICKEYSTRUC));
    keyBuf = blob + sizeof(PUBLICKEYSTRUC) + sizeof(DWORD);
    desc->aiKeyAlg = CALG_RC4;
    desc->bType = PLAINTEXTKEYBLOB;
    desc->bVersion = CUR_BLOB_VERSION;
    desc->reserved = 0;
    *keySize = len;
    memcpy(keyBuf, key, len);
    if (info->hKey)
    {
        CryptDestroyKey(info->hKey);
        info->hKey = 0;
    }
    ret = CryptImportKey(info->hCryptProv,
                         blob,
                         sizeof(PUBLICKEYSTRUC) + sizeof(DWORD) + len,
                         0,
                         CRYPT_EXPORTABLE,
                         &info->hKey);
    g_free(blob);
    if (!ret)
    {
        dwErr = GetLastError();
        error("CryptImportKey failed with %lx\n", dwErr);
    }
}
