
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int call_index; } ;
struct TYPE_3__ {int used_idx; int called_used_idx; } ;


 int call () ;
 TYPE_2__* event ;
 TYPE_1__ host ;
 int need_event (int ,int ,int ) ;
 int smp_mb () ;

void call_used(void)
{
 bool need;



 smp_mb();

 need = need_event(event->call_index,
   host.used_idx,
   host.called_used_idx);

 host.called_used_idx = host.used_idx;

 if (need)
  call();
}
