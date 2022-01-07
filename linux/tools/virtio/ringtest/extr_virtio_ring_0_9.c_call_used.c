
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int used_idx; int called_used_idx; } ;


 int call () ;
 TYPE_1__ host ;
 int ring ;
 int smp_mb () ;
 int vring_need_event (int ,int ,int ) ;
 int vring_used_event (int *) ;

void call_used(void)
{
 bool need;



 smp_mb();
 need = vring_need_event(vring_used_event(&ring),
    host.used_idx,
    host.called_used_idx);

 host.called_used_idx = host.used_idx;
 if (need)
  call();
}
