
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cbData; int * pbData; } ;
typedef int HCRYPTHASH ;
typedef int DWORD ;
typedef TYPE_1__ DATA_BLOB ;
typedef int BYTE ;
typedef int BOOL ;


 int CryptGetHashParam (int ,int ,int *,int*,int ) ;
 int * CryptMemAlloc (int) ;
 int CryptMemFree (int *) ;
 int ERR (char*) ;
 int FALSE ;
 int HP_HASHSIZE ;
 int HP_HASHVAL ;
 int TRACE (char*) ;
 int TRUE ;

__attribute__((used)) static
BOOL convert_hash_to_blob(HCRYPTHASH hHash, DATA_BLOB * blob)
{
    DWORD dwSize;

    TRACE("called\n");

    if (!blob) return FALSE;

    dwSize=sizeof(DWORD);
    if (!CryptGetHashParam(hHash, HP_HASHSIZE, (BYTE*)&blob->cbData,
                           &dwSize, 0))
    {
        ERR("failed to get hash size\n");
        return FALSE;
    }

    if (!(blob->pbData=CryptMemAlloc(blob->cbData)))
    {
        ERR("failed to allocate blob memory\n");
        return FALSE;
    }

    dwSize=blob->cbData;
    if (!CryptGetHashParam(hHash, HP_HASHVAL, blob->pbData, &dwSize, 0))
    {
        ERR("failed to get hash value\n");
        CryptMemFree(blob->pbData);
        blob->pbData=((void*)0);
        blob->cbData=0;
        return FALSE;
    }

    return TRUE;
}
