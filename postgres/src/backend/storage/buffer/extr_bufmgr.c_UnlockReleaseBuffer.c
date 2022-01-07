
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Buffer ;


 int BUFFER_LOCK_UNLOCK ;
 int LockBuffer (int ,int ) ;
 int ReleaseBuffer (int ) ;

void
UnlockReleaseBuffer(Buffer buffer)
{
 LockBuffer(buffer, BUFFER_LOCK_UNLOCK);
 ReleaseBuffer(buffer);
}
