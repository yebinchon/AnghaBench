
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetPrivateRefCount (int) ;
 int GetStartupBufferPinWaitBufId () ;

bool
HoldingBufferPinThatDelaysRecovery(void)
{
 int bufid = GetStartupBufferPinWaitBufId();







 if (bufid < 0)
  return 0;

 if (GetPrivateRefCount(bufid + 1) > 0)
  return 1;

 return 0;
}
