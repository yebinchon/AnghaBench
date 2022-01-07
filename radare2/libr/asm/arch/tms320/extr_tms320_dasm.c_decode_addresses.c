
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int syntax; } ;
typedef TYPE_1__ tms320_dasm_t ;


 int L16 ;
 int L7 ;
 int L8 ;
 int P24 ;
 int P8 ;
 int be16 (int) ;
 int be24 (int) ;
 scalar_t__ field_valid (TYPE_1__*,int ) ;
 int field_value (TYPE_1__*,int ) ;
 int l1 ;
 int l16 ;
 int l3 ;
 int l7 ;
 int substitute (int ,char*,char*,int) ;

void decode_addresses(tms320_dasm_t * dasm)
{


 if (field_valid (dasm, L7)) {
  substitute (dasm->syntax, "L7", "0x%02X", field_value (dasm, L7));
 }
 if (field_valid (dasm, L8)) {
  substitute (dasm->syntax, "L8", "0x%02X", field_value (dasm, L8));
 }
 if (field_valid (dasm, L16)) {
  substitute (dasm->syntax, "L16", "0x%04X", be16 (field_value (dasm, L16)));
 }



 if (field_valid (dasm, l1) && field_valid (dasm, l3)) {
  substitute (dasm->syntax, "l4", "0x%01X", (field_value (dasm, l3) << 1) | field_value (dasm, l1));
 }



 if (field_valid (dasm, l7)) {
  substitute (dasm->syntax, "pmad", "0x%02X", field_value (dasm, l7));
 }
 if (field_valid (dasm, l16)) {
  substitute (dasm->syntax, "pmad", "0x%04X", be16 (field_value (dasm, l16)));
 }



 if (field_valid (dasm, P8)) {
  substitute (dasm->syntax, "P8", "0x%02X", field_value (dasm, P8));
 }
 if (field_valid (dasm, P24)) {
  substitute (dasm->syntax, "P24", "0x%06X", be24 (field_value (dasm, P24)));
 }
}
