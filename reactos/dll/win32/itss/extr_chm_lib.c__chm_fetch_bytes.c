
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct chmFile {scalar_t__ fd; int mutex; } ;
typedef scalar_t__ UInt64 ;
typedef int UChar ;
struct TYPE_4__ {scalar_t__ QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef scalar_t__ Int64 ;
typedef scalar_t__ DWORD ;


 int CHM_ACQUIRE_LOCK (int ) ;
 scalar_t__ CHM_NULL_FD ;
 int CHM_RELEASE_LOCK (int ) ;
 int FILE_BEGIN ;
 int FILE_CURRENT ;
 scalar_t__ ReadFile (scalar_t__,int *,scalar_t__,scalar_t__*,int *) ;
 int SetFilePointerEx (scalar_t__,TYPE_1__,TYPE_1__*,int ) ;

__attribute__((used)) static Int64 _chm_fetch_bytes(struct chmFile *h,
                              UChar *buf,
                              UInt64 os,
                              Int64 len)
{
    Int64 readLen=0;
    if (h->fd == CHM_NULL_FD)
        return readLen;

    CHM_ACQUIRE_LOCK(h->mutex);

    {
        LARGE_INTEGER old_pos, new_pos;
        DWORD actualLen=0;


        new_pos.QuadPart = 0;
        SetFilePointerEx( h->fd, new_pos, &old_pos, FILE_CURRENT );
        new_pos.QuadPart = os;
        SetFilePointerEx( h->fd, new_pos, ((void*)0), FILE_BEGIN );


        if (ReadFile(h->fd,
                     buf,
                     (DWORD)len,
                     &actualLen,
                     ((void*)0)))
            readLen = actualLen;
        else
            readLen = 0;


        SetFilePointerEx( h->fd, old_pos, ((void*)0), FILE_BEGIN );
    }
    CHM_RELEASE_LOCK(h->mutex);
    return readLen;
}
