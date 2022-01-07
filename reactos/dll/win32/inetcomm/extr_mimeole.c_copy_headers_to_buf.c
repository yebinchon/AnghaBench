
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int QuadPart; } ;
typedef int LONGLONG ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int IStream ;
typedef int HRESULT ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 char* HeapReAlloc (int ,int ,char*,int) ;
 int IStream_Read (int *,char*,int,int*) ;
 int IStream_Seek (int *,TYPE_1__,int ,int *) ;
 int PARSER_BUF_SIZE ;
 int STREAM_SEEK_CUR ;
 int S_OK ;
 scalar_t__ TRUE ;
 char* strstr (char*,char*) ;

__attribute__((used)) static HRESULT copy_headers_to_buf(IStream *stm, char **ptr)
{
    char *buf = ((void*)0);
    DWORD size = PARSER_BUF_SIZE, offset = 0, last_end = 0;
    HRESULT hr;
    BOOL done = FALSE;

    *ptr = ((void*)0);

    do
    {
        char *end;
        DWORD read;

        if(!buf)
            buf = HeapAlloc(GetProcessHeap(), 0, size + 1);
        else
        {
            size *= 2;
            buf = HeapReAlloc(GetProcessHeap(), 0, buf, size + 1);
        }
        if(!buf)
        {
            hr = E_OUTOFMEMORY;
            goto fail;
        }

        hr = IStream_Read(stm, buf + offset, size - offset, &read);
        if(FAILED(hr)) goto fail;

        offset += read;
        buf[offset] = '\0';

        if(read == 0) done = TRUE;

        while(!done && (end = strstr(buf + last_end, "\r\n")))
        {
            DWORD new_end = end - buf + 2;
            if(new_end - last_end == 2)
            {
                LARGE_INTEGER off;
                off.QuadPart = (LONGLONG)new_end - offset;
                IStream_Seek(stm, off, STREAM_SEEK_CUR, ((void*)0));
                buf[new_end] = '\0';
                done = TRUE;
            }
            else
                last_end = new_end;
        }
    } while(!done);

    *ptr = buf;
    return S_OK;

fail:
    HeapFree(GetProcessHeap(), 0, buf);
    return hr;
}
