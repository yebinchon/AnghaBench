
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_6__ {int big_endian; } ;
struct TYPE_5__ {int buf; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;


 int eprintf (char*) ;
 int r_num_math (int *,char*) ;
 scalar_t__ r_strbuf_get (int *) ;
 int r_write_ble16 (int *,short,int ) ;
 int r_write_ble32 (int *,int,int ) ;
 int r_write_ble64 (int *,long,int ) ;

__attribute__((used)) static inline int r_asm_pseudo_intN(RAsm *a, RAsmOp *op, char *input, int n) {
 short s;
 int i;
 long int l;
 ut64 s64 = r_num_math (((void*)0), input);
 if (n != 8 && s64 >> (n * 8)) {
  eprintf ("int16 Out is out of range\n");
  return 0;
 }

 ut8 *buf = (ut8*)r_strbuf_get (&op->buf);
 if (!buf) {
  return 0;
 }
 if (n == 2) {
  s = (short)s64;
  r_write_ble16 (buf, s, a->big_endian);
 } else if (n == 4) {
  i = (int)s64;
  r_write_ble32 (buf, i, a->big_endian);
 } else if (n == 8) {
  l = (long int)s64;
  r_write_ble64 (buf, l, a->big_endian);
 } else {
  return 0;
 }
 return n;
}
