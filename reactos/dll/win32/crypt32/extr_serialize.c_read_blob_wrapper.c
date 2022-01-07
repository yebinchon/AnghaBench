
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct BlobReader {scalar_t__ current; TYPE_1__* blob; } ;
struct TYPE_2__ {scalar_t__ cbData; scalar_t__ pbData; } ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int memcpy (void*,scalar_t__,int ) ;
 int min (int ,scalar_t__) ;

__attribute__((used)) static BOOL read_blob_wrapper(void *handle, void *buffer, DWORD bytesToRead,
 DWORD *bytesRead)
{
    struct BlobReader *reader = handle;
    BOOL ret;

    if (reader->current < reader->blob->cbData)
    {
        *bytesRead = min(bytesToRead, reader->blob->cbData - reader->current);
        memcpy(buffer, reader->blob->pbData + reader->current, *bytesRead);
        reader->current += *bytesRead;
        ret = TRUE;
    }
    else if (reader->current == reader->blob->cbData)
    {
        *bytesRead = 0;
        ret = TRUE;
    }
    else
        ret = FALSE;
    return ret;
}
