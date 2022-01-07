
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* stream; size_t length; } ;
typedef TYPE_1__ tms320_dasm_t ;


 int q_cr ;
 int q_lr ;
 int set_field_value (TYPE_1__*,int ,int) ;

void decode_qualifiers(tms320_dasm_t * dasm)
{
 switch (dasm->stream[dasm->length]) {
 case 0x98:

  break;

 case 0x99:

  break;
 case 0x9a:

  break;

 case 0x9c:

  set_field_value(dasm, q_lr, 1);
  break;
 case 0x9d:

  set_field_value(dasm, q_cr, 1);
  break;
 }
}
