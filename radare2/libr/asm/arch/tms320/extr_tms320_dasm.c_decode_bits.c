
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int syntax; } ;
typedef TYPE_1__ tms320_dasm_t ;


 int R ;
 int U ;
 scalar_t__ field_valid (TYPE_1__*,int ) ;
 scalar_t__ field_value (TYPE_1__*,int ) ;
 int g ;
 int substitute (int ,char*,char*,char*) ;
 int u ;

void decode_bits(tms320_dasm_t * dasm)
{

 if (field_valid (dasm, R)) {
  substitute (dasm->syntax, "[r]", "%s", field_value (dasm, R) ? "r" : "");
 }


 if (field_valid (dasm, u)) {
  substitute (dasm->syntax, "[u]", "%s", field_value (dasm, u) ? "u" : "");
 }


 if (field_valid (dasm, g)) {
  substitute (dasm->syntax, "[40]", "%s", field_value (dasm, g) ? "40" : "");
 }


 if (field_valid (dasm, U)) {
  substitute (dasm->syntax, "[T3 = ]", "%s", field_value (dasm, U) ? "t3=" : "");
 }
}
