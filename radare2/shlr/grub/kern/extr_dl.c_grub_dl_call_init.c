
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* grub_dl_t ;
struct TYPE_4__ {int (* init ) (TYPE_1__*) ;} ;


 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
grub_dl_call_init (grub_dl_t mod)
{
  if (mod->init)
    (mod->init) (mod);
}
