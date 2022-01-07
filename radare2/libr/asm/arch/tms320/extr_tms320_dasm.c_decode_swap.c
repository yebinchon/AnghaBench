
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int syntax; } ;
typedef TYPE_1__ tms320_dasm_t ;


 scalar_t__ field_valid (TYPE_1__*,int ) ;
 int field_value (TYPE_1__*,int ) ;
 int get_swap_str (int ,char*) ;
 int k6 ;
 int substitute (int ,char*,int ) ;

void decode_swap(tms320_dasm_t * dasm)
{
 char tmp[64];

 if (field_valid (dasm, k6)) {
  substitute (dasm->syntax, "SWAP ( )", get_swap_str (field_value (dasm, k6), tmp));
 }
}
