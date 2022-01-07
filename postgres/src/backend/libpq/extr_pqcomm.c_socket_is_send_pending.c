
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PqSendPointer ;
 scalar_t__ PqSendStart ;

__attribute__((used)) static bool
socket_is_send_pending(void)
{
 return (PqSendStart < PqSendPointer);
}
