
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_signal_mask ;
 int pgwin32_dispatch_queued_signals () ;

int
pqsigsetmask(int mask)
{
 int prevmask;

 prevmask = pg_signal_mask;
 pg_signal_mask = mask;





 pgwin32_dispatch_queued_signals();

 return prevmask;
}
