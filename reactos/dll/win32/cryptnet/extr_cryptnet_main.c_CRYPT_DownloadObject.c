
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct InetContext {int timeout; int event; scalar_t__ error; } ;
typedef int buffer ;
struct TYPE_10__ {int pbData; int cbData; int * member_1; int member_0; } ;
struct TYPE_9__ {int member_0; int dwBufferLength; int lpvBuffer; int member_1; } ;
struct TYPE_8__ {int cBlob; TYPE_1__* rgBlob; } ;
struct TYPE_7__ {int cbData; int pbData; } ;
typedef int PCRYPT_RETRIEVE_AUX_INFO ;
typedef TYPE_2__* PCRYPT_BLOB_ARRAY ;
typedef TYPE_3__ INTERNET_BUFFERSA ;
typedef int HINTERNET ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef TYPE_4__ CRYPT_DATA_BLOB ;
typedef scalar_t__ BOOL ;


 void* CryptMemAlloc (int) ;
 int CryptMemFree (int) ;
 int CryptMemRealloc (int,int) ;
 scalar_t__ ERROR_IO_PENDING ;
 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_TIMEOUT ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int IRF_NO_WAIT ;
 scalar_t__ InternetQueryDataAvailable (int ,int*,int ,int ) ;
 scalar_t__ InternetReadFileExA (int ,TYPE_3__*,int ,int ) ;
 int SetLastError (scalar_t__) ;
 int TRACE (char*,scalar_t__) ;
 scalar_t__ TRUE ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (int ,int ) ;

__attribute__((used)) static BOOL CRYPT_DownloadObject(DWORD dwRetrievalFlags, HINTERNET hHttp,
 struct InetContext *context, PCRYPT_BLOB_ARRAY pObject,
 PCRYPT_RETRIEVE_AUX_INFO pAuxInfo)
{
    CRYPT_DATA_BLOB object = { 0, ((void*)0) };
    DWORD bytesAvailable;
    BOOL ret;

    do {
        if ((ret = InternetQueryDataAvailable(hHttp, &bytesAvailable, 0, 0)))
        {
            if (bytesAvailable)
            {
                if (object.pbData)
                    object.pbData = CryptMemRealloc(object.pbData,
                     object.cbData + bytesAvailable);
                else
                    object.pbData = CryptMemAlloc(bytesAvailable);
                if (object.pbData)
                {
                    INTERNET_BUFFERSA buffer = { sizeof(buffer), 0 };

                    buffer.dwBufferLength = bytesAvailable;
                    buffer.lpvBuffer = object.pbData + object.cbData;
                    if (!(ret = InternetReadFileExA(hHttp, &buffer, IRF_NO_WAIT,
                     (DWORD_PTR)context)))
                    {
                        if (GetLastError() == ERROR_IO_PENDING)
                        {
                            if (WaitForSingleObject(context->event,
                             context->timeout) == WAIT_TIMEOUT)
                                SetLastError(ERROR_TIMEOUT);
                            else if (context->error)
                                SetLastError(context->error);
                            else
                                ret = TRUE;
                        }
                    }
                    if (ret)
                        object.cbData += buffer.dwBufferLength;
                }
                else
                {
                    SetLastError(ERROR_OUTOFMEMORY);
                    ret = FALSE;
                }
            }
        }
        else if (GetLastError() == ERROR_IO_PENDING)
        {
            if (WaitForSingleObject(context->event, context->timeout) ==
             WAIT_TIMEOUT)
                SetLastError(ERROR_TIMEOUT);
            else
                ret = TRUE;
        }
    } while (ret && bytesAvailable);
    if (ret)
    {
        pObject->rgBlob = CryptMemAlloc(sizeof(CRYPT_DATA_BLOB));
        if (!pObject->rgBlob)
        {
            CryptMemFree(object.pbData);
            SetLastError(ERROR_OUTOFMEMORY);
            ret = FALSE;
        }
        else
        {
            pObject->rgBlob[0].cbData = object.cbData;
            pObject->rgBlob[0].pbData = object.pbData;
            pObject->cBlob = 1;
        }
    }
    TRACE("returning %d\n", ret);
    return ret;
}
