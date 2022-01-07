
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int avail_idx; int kicked_avail_idx; } ;


 TYPE_1__ guest ;
 int kick () ;
 int ring ;
 int smp_mb () ;
 int vring_avail_event (int *) ;
 int vring_need_event (int ,int ,int ) ;

void kick_available(void)
{
 bool need;



 smp_mb();
 need = vring_need_event(vring_avail_event(&ring),
    guest.avail_idx,
    guest.kicked_avail_idx);

 guest.kicked_avail_idx = guest.avail_idx;
 if (need)
  kick();
}
