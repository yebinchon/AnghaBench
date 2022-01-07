
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int sock; } ;
typedef TYPE_1__ Port ;


 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 int MyLatch ;
 scalar_t__ PqGSSRecvBuffer ;
 scalar_t__ PqGSSRecvLength ;
 int WAIT_EVENT_GSS_OPEN_SERVER ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_SOCKET_READABLE ;
 int WaitLatchOrSocket (int ,int,int ,int ,int ) ;
 scalar_t__ errno ;
 scalar_t__ secure_raw_read (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static ssize_t
read_or_wait(Port *port, ssize_t len)
{
 ssize_t ret;





 while (PqGSSRecvLength != len)
 {
  ret = secure_raw_read(port, PqGSSRecvBuffer + PqGSSRecvLength, len - PqGSSRecvLength);





  if (ret < 0 && !(errno == EWOULDBLOCK || errno == EAGAIN))
   return -1;
  if (ret <= 0)
  {




   if (ret < 0 && !(errno == EWOULDBLOCK || errno == EAGAIN))
    return -1;





   WaitLatchOrSocket(MyLatch,
         WL_SOCKET_READABLE | WL_EXIT_ON_PM_DEATH,
         port->sock, 0, WAIT_EVENT_GSS_OPEN_SERVER);
   if (ret == 0)
   {
    ret = secure_raw_read(port, PqGSSRecvBuffer + PqGSSRecvLength, len - PqGSSRecvLength);
    if (ret == 0)
     return -1;
   }
   else
    continue;
  }

  PqGSSRecvLength += ret;
 }

 return len;
}
