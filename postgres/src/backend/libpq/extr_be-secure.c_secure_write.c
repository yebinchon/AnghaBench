
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_10__ {int events; } ;
typedef TYPE_2__ WaitEvent ;
struct TYPE_11__ {int noblock; TYPE_1__* gss; scalar_t__ ssl_in_use; } ;
struct TYPE_9__ {scalar_t__ enc; } ;
typedef TYPE_3__ Port ;


 int Assert (int) ;
 scalar_t__ EAGAIN ;
 int ERRCODE_ADMIN_SHUTDOWN ;
 scalar_t__ EWOULDBLOCK ;
 int FATAL ;
 int FeBeWaitSet ;
 int ModifyWaitEvent (int ,int ,int,int *) ;
 int MyLatch ;
 int ProcessClientWriteInterrupt (int) ;
 int ResetLatch (int ) ;
 int WAIT_EVENT_CLIENT_WRITE ;
 int WL_LATCH_SET ;
 int WL_POSTMASTER_DEATH ;
 int WL_SOCKET_WRITEABLE ;
 int WaitEventSetWait (int ,int,TYPE_2__*,int,int ) ;
 scalar_t__ be_gssapi_write (TYPE_3__*,void*,size_t) ;
 scalar_t__ be_tls_write (TYPE_3__*,void*,size_t,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ errno ;
 scalar_t__ secure_raw_write (TYPE_3__*,void*,size_t) ;

ssize_t
secure_write(Port *port, void *ptr, size_t len)
{
 ssize_t n;
 int waitfor;


 ProcessClientWriteInterrupt(0);

retry:
 waitfor = 0;
 {
  n = secure_raw_write(port, ptr, len);
  waitfor = WL_SOCKET_WRITEABLE;
 }

 if (n < 0 && !port->noblock && (errno == EWOULDBLOCK || errno == EAGAIN))
 {
  WaitEvent event;

  Assert(waitfor);

  ModifyWaitEvent(FeBeWaitSet, 0, waitfor, ((void*)0));

  WaitEventSetWait(FeBeWaitSet, -1 , &event, 1,
       WAIT_EVENT_CLIENT_WRITE);


  if (event.events & WL_POSTMASTER_DEATH)
   ereport(FATAL,
     (errcode(ERRCODE_ADMIN_SHUTDOWN),
      errmsg("terminating connection due to unexpected postmaster exit")));


  if (event.events & WL_LATCH_SET)
  {
   ResetLatch(MyLatch);
   ProcessClientWriteInterrupt(1);






  }
  goto retry;
 }





 ProcessClientWriteInterrupt(0);

 return n;
}
