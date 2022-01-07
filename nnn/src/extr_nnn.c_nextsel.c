
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint ;
struct kevent {int dummy; } ;
struct inotify_event {int len; int wd; int mask; } ;
struct TYPE_5__ {int sym; int act; } ;
struct TYPE_4__ {int blkorder; int selmode; scalar_t__ filtermode; } ;


 int CONTROL (char) ;
 int DPRINTF_D (int) ;
 int DPRINTF_S (char*) ;
 int EVENT_BUF_LEN ;
 int FILTER ;
 int INOTIFY_MASK ;
 int LEN (TYPE_2__*) ;
 int MSGWAIT ;
 int NUM_EVENT_FDS ;
 int NUM_EVENT_SLOTS ;
 TYPE_2__* bindings ;
 TYPE_1__ cfg ;
 scalar_t__ event_fd ;
 int events_to_monitor ;
 int getch () ;
 int gtimeout ;
 int idle ;
 int inotify_fd ;
 scalar_t__ inotify_wd ;
 scalar_t__ kevent (int ,int ,int,struct kevent*,int ,int *) ;
 int kq ;
 int memset (void*,int,int) ;
 int read (int ,char*,int) ;

__attribute__((used)) static int nextsel(int presel)
{
 int c = presel;
 uint i;
 const uint len = LEN(bindings);
 if (c == 0 || c == MSGWAIT) {
  c = getch();
  DPRINTF_D(c);

  if (presel == MSGWAIT) {
   if (cfg.filtermode)
    c = FILTER;
   else
    c = CONTROL('L');
  }
 }

 if (c == -1) {
  ++idle;
 } else
  idle = 0;

 for (i = 0; i < len; ++i)
  if (c == bindings[i].sym)
   return bindings[i].act;

 return 0;
}
