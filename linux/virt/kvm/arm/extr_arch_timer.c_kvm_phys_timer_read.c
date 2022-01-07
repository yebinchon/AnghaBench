
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int (* read ) (TYPE_2__*) ;} ;
struct TYPE_3__ {TYPE_2__* cc; } ;


 int stub1 (TYPE_2__*) ;
 TYPE_1__* timecounter ;

u64 kvm_phys_timer_read(void)
{
 return timecounter->cc->read(timecounter->cc);
}
