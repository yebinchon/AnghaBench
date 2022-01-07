
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MemWrittenTracker {scalar_t__ written; scalar_t__ cbData; scalar_t__ pbData; } ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int ERROR_MORE_DATA ;
 int FALSE ;
 int SetLastError (int ) ;
 int TRUE ;
 int memcpy (scalar_t__,void const*,scalar_t__) ;

__attribute__((used)) static BOOL CRYPT_MemOutputFunc(void *handle, const void *buffer, DWORD size)
{
    struct MemWrittenTracker *tracker = handle;
    BOOL ret;

    if (tracker->written + size > tracker->cbData)
    {
        SetLastError(ERROR_MORE_DATA);


        tracker->written += size;
        ret = FALSE;
    }
    else
    {
        memcpy(tracker->pbData + tracker->written, buffer, size);
        tracker->written += size;
        ret = TRUE;
    }
    return ret;
}
