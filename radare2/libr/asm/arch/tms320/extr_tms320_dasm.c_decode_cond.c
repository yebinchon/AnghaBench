
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int syntax; } ;
typedef TYPE_1__ tms320_dasm_t ;


 int CCCCCCC ;
 scalar_t__ field_valid (TYPE_1__*,int ) ;
 int field_value (TYPE_1__*,int ) ;
 int get_cond_str (int ,char*) ;
 int substitute (int ,char*,char*,...) ;

void decode_cond(tms320_dasm_t * dasm)
{
 char tmp[64];

 if (field_valid (dasm, CCCCCCC)) {
  substitute (dasm->syntax, "cond", "%s", get_cond_str (field_value (dasm, CCCCCCC), tmp));
 }

 substitute(dasm->syntax, "[label, ]", "");
}
