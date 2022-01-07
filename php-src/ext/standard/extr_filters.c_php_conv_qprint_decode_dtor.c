
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int persistent; int * lbchars; scalar_t__ lbchars_dup; } ;
typedef TYPE_1__ php_conv_qprint_decode ;


 int assert (int ) ;
 int pefree (void*,int ) ;

__attribute__((used)) static void php_conv_qprint_decode_dtor(php_conv_qprint_decode *inst)
{
 assert(inst != ((void*)0));
 if (inst->lbchars_dup && inst->lbchars != ((void*)0)) {
  pefree((void *)inst->lbchars, inst->persistent);
 }
}
