
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int user; TYPE_1__* handler; } ;
struct TYPE_4__ {int (* fini ) (int ) ;} ;
typedef TYPE_2__ RAnalEsilInterrupt ;


 int free (TYPE_2__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void _interrupt_free_cb(void *user) {
 RAnalEsilInterrupt *intr = (RAnalEsilInterrupt *)user;
 if (intr && intr->handler && intr->handler->fini) {
  intr->handler->fini (intr->user);
 }
 free (intr);
}
