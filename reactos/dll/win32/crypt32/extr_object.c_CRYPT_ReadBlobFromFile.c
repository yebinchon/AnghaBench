
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cbData; int pbData; } ;
typedef TYPE_1__* PCERT_BLOB ;
typedef int LPCWSTR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int ,int ,int ,int *,int ,int ,int *) ;
 int CryptMemAlloc (scalar_t__) ;
 int CryptMemFree (int ) ;
 int FALSE ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 scalar_t__ GetFileSize (scalar_t__,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 scalar_t__ ReadFile (scalar_t__,int ,scalar_t__,scalar_t__*,int *) ;
 int TRACE (char*,int) ;
 int TRUE ;
 int debugstr_w (int ) ;

__attribute__((used)) static BOOL CRYPT_ReadBlobFromFile(LPCWSTR fileName, PCERT_BLOB blob)
{
    BOOL ret = FALSE;
    HANDLE file;

    TRACE("%s\n", debugstr_w(fileName));

    file = CreateFileW(fileName, GENERIC_READ, FILE_SHARE_READ, ((void*)0),
     OPEN_EXISTING, 0, ((void*)0));
    if (file != INVALID_HANDLE_VALUE)
    {
        ret = TRUE;
        blob->cbData = GetFileSize(file, ((void*)0));
        if (blob->cbData)
        {
            blob->pbData = CryptMemAlloc(blob->cbData);
            if (blob->pbData)
            {
                DWORD read;

                ret = ReadFile(file, blob->pbData, blob->cbData, &read, ((void*)0)) && read == blob->cbData;
                if (!ret) CryptMemFree(blob->pbData);
            }
            else
                ret = FALSE;
        }
        CloseHandle(file);
    }
    TRACE("returning %d\n", ret);
    return ret;
}
