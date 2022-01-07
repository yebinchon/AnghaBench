
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 scalar_t__ UNBLOCKED_SIGNAL_QUEUE () ;
 int errno ;
 int pgwin32_dispatch_queued_signals () ;

__attribute__((used)) static int
pgwin32_poll_signals(void)
{
 if (UNBLOCKED_SIGNAL_QUEUE())
 {
  pgwin32_dispatch_queued_signals();
  errno = EINTR;
  return 1;
 }
 return 0;
}
