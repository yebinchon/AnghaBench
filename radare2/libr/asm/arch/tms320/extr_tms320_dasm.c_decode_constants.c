
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int syntax; } ;
typedef TYPE_1__ tms320_dasm_t ;


 int D16 ;
 int K16 ;
 int K8 ;
 int SHFT ;
 int SHIFTW ;
 int be16 (int) ;
 scalar_t__ field_valid (TYPE_1__*,int ) ;
 int field_value (TYPE_1__*,int ) ;
 int k12 ;
 int k16 ;
 int k3 ;
 int k4 ;
 int k5 ;
 int k8 ;
 int substitute (int ,char*,char*,int) ;

void decode_constants(tms320_dasm_t * dasm)
{


 if (field_valid (dasm, K8)) {
  substitute (dasm->syntax, "K8", "0x%02X", field_value (dasm, K8));
 }
 if (field_valid (dasm, K16)) {
  substitute (dasm->syntax, "K16", "0x%04X", be16 (field_value (dasm, K16)));
 }



 if (field_valid (dasm, k4)) {
  substitute (dasm->syntax, "K4", "0x%01X", field_value (dasm, k4));
 }
 if (field_valid (dasm, k5)) {
  substitute (dasm->syntax, "k5", "0x%02X", field_value (dasm, k5));
 }
 if (field_valid (dasm, k8)) {
  substitute (dasm->syntax, "k8", "0x%02X", field_value (dasm, k8));
 }

 if (field_valid (dasm, k12)) {
  substitute (dasm->syntax, "k12", "0x%03X", be16 (field_value (dasm, k12)));
 }
 if (field_valid (dasm, k16)) {
  substitute (dasm->syntax, "k16", "0x%04X", be16 (field_value (dasm, k16)));
 }

 if (field_valid (dasm, k4) && field_valid (dasm, k3)) {
  substitute (dasm->syntax, "k7", "0x%02X", (field_value (dasm, k3) << 4) | field_value (dasm, k4));
 }
 if (field_valid (dasm, k4) && field_valid (dasm, k5)) {
  substitute (dasm->syntax, "k9", "0x%03X", (field_value (dasm, k5) << 4) | field_value (dasm, k4));
 }
 if (field_valid (dasm, k4) && field_valid (dasm, k8)) {
  substitute (dasm->syntax, "k12", "0x%03X", (field_value (dasm, k8) << 4) | field_value (dasm, k4));
 }



 if (field_valid (dasm, D16)) {
  substitute (dasm->syntax, "D16", "0x%04X", be16 (field_value (dasm, D16)));
 }



 if (field_valid (dasm, SHFT)) {
  substitute (dasm->syntax, "#SHFT", "0x%01X", field_value (dasm, SHFT));
 }
 if (field_valid (dasm, SHIFTW)) {
  substitute (dasm->syntax, "#SHIFTW", "0x%02X", field_value (dasm, SHIFTW));
 }
}
