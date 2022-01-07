
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InvalidateSystemCaches () ;
 int LocalExecuteInvalidationMessage ;
 int ReceiveSharedInvalidMessages (int ,int (*) ()) ;

void
AcceptInvalidationMessages(void)
{
 ReceiveSharedInvalidMessages(LocalExecuteInvalidationMessage,
         InvalidateSystemCaches);
}
