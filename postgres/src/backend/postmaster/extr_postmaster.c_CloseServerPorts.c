
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 scalar_t__* ListenSocket ;
 int MAXLISTEN ;
 scalar_t__ PGINVALID_SOCKET ;
 int RemoveSocketFiles () ;
 int StreamClose (scalar_t__) ;

__attribute__((used)) static void
CloseServerPorts(int status, Datum arg)
{
 int i;







 for (i = 0; i < MAXLISTEN; i++)
 {
  if (ListenSocket[i] != PGINVALID_SOCKET)
  {
   StreamClose(ListenSocket[i]);
   ListenSocket[i] = PGINVALID_SOCKET;
  }
 }






 RemoveSocketFiles();





}
