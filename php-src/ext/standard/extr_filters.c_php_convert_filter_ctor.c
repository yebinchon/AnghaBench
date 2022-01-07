
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int persistent; int * filtername; int * cd; scalar_t__ stub_len; } ;
typedef TYPE_1__ php_convert_filter ;
typedef int HashTable ;


 int FAILURE ;
 int SUCCESS ;
 int pefree (int *,int) ;
 int * pestrdup (char const*,int) ;
 int php_conv_dtor (int *) ;
 int * php_conv_open (int,int *,int) ;

__attribute__((used)) static int php_convert_filter_ctor(php_convert_filter *inst,
 int conv_mode, HashTable *conv_opts,
 const char *filtername, int persistent)
{
 inst->persistent = persistent;
 inst->filtername = pestrdup(filtername, persistent);
 inst->stub_len = 0;

 if ((inst->cd = php_conv_open(conv_mode, conv_opts, persistent)) == ((void*)0)) {
  goto out_failure;
 }

 return SUCCESS;

out_failure:
 if (inst->cd != ((void*)0)) {
  php_conv_dtor(inst->cd);
  pefree(inst->cd, persistent);
 }
 if (inst->filtername != ((void*)0)) {
  pefree(inst->filtername, persistent);
 }
 return FAILURE;
}
