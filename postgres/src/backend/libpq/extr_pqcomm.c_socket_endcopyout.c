
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DoingCopyOut ;
 int pq_putbytes (char*,int) ;

__attribute__((used)) static void
socket_endcopyout(bool errorAbort)
{
 if (!DoingCopyOut)
  return;
 if (errorAbort)
  pq_putbytes("\n\n\\.\n", 5);

 DoingCopyOut = 0;
}
