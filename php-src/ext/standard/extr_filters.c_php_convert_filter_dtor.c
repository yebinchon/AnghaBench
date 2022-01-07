
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int persistent; int * filtername; int * cd; } ;
typedef TYPE_1__ php_convert_filter ;


 int pefree (int *,int ) ;
 int php_conv_dtor (int *) ;

__attribute__((used)) static void php_convert_filter_dtor(php_convert_filter *inst)
{
 if (inst->cd != ((void*)0)) {
  php_conv_dtor(inst->cd);
  pefree(inst->cd, inst->persistent);
 }

 if (inst->filtername != ((void*)0)) {
  pefree(inst->filtername, inst->persistent);
 }
}
