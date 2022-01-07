
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kick_index; } ;
struct TYPE_3__ {int avail_idx; int kicked_avail_idx; } ;


 TYPE_2__* event ;
 TYPE_1__ guest ;
 int kick () ;
 int need_event (int ,int ,int ) ;
 int smp_mb () ;

void kick_available(void)
{
 bool need;



 smp_mb();
 need = need_event(event->kick_index,
      guest.avail_idx,
      guest.kicked_avail_idx);

 guest.kicked_avail_idx = guest.avail_idx;
 if (need)
  kick();
}
