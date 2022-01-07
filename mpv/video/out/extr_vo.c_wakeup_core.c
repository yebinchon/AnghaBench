
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wakeup_ctx; int (* wakeup_cb ) (int ) ;} ;
struct vo {TYPE_1__ extra; } ;


 int stub1 (int ) ;

__attribute__((used)) static void wakeup_core(struct vo *vo)
{
    vo->extra.wakeup_cb(vo->extra.wakeup_ctx);
}
