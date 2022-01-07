
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int syntax; } ;
typedef TYPE_1__ tms320_dasm_t ;


 int cc ;
 scalar_t__ field_valid (TYPE_1__*,int ) ;
 int field_value (TYPE_1__*,int ) ;
 int get_relop_str (int ,int *) ;
 int substitute (int ,char*,int ) ;

void decode_relop(tms320_dasm_t * dasm)
{
 if (field_valid (dasm, cc)) {
  substitute (dasm->syntax, "RELOP", get_relop_str (field_value (dasm, cc), ((void*)0)));
 }
}
