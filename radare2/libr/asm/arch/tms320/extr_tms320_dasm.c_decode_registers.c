
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {int syntax; } ;
typedef TYPE_1__ tms320_dasm_t ;


 int DD ;
 int DD2 ;
 int FDDD ;
 int FSSS ;
 int SS ;
 int SS2 ;
 int XACD ;
 int XACS ;
 int XDDD ;
 int XSSS ;
 int dd ;
 scalar_t__ field_valid (TYPE_1__*,int ) ;
 int field_value (TYPE_1__*,int ) ;
 int get_freg_str (int,int *) ;
 int get_t_str (int,int *) ;
 int get_v_str (int,int *) ;
 int get_xreg_str (int,int *) ;
 int r ;
 int ss ;
 int substitute (int ,char*,char*,...) ;
 int t ;
 int tt ;
 int vv ;

void decode_registers(tms320_dasm_t * dasm)
{
 ut8 code = 0;



 if (field_valid (dasm, r)) {
  substitute (dasm->syntax, "TRNx", "trn%d", field_value (dasm, r));
 }



 if (field_valid (dasm, ss)) {
  substitute (dasm->syntax, "Tx", "t%d", field_value (dasm, ss));
 }

 if (field_valid (dasm, dd)) {
  substitute (dasm->syntax, "Tx", "t%d", field_value (dasm, dd));
 }



 if (field_valid(dasm, vv)) {
  substitute(dasm->syntax, "BitIn", "%s", get_v_str(field_value(dasm, vv) >> 1, ((void*)0)));
  substitute(dasm->syntax, "BitOut", "%s", get_v_str(field_value(dasm, vv) >> 0, ((void*)0)));
 }



 if (field_valid (dasm, t)) {
  substitute (dasm->syntax, "TCx", "%s", get_t_str (field_value (dasm, t), ((void*)0)));
 }

 if (field_valid(dasm, tt)) {
  substitute(dasm->syntax, "TCx", "%s", get_t_str(field_value(dasm, tt) >> 0, ((void*)0)));
  substitute(dasm->syntax, "TCy", "%s", get_t_str(field_value(dasm, tt) >> 1, ((void*)0)));
 }



 if (field_valid(dasm, XSSS)) {
  substitute(dasm->syntax, "xsrc", "%s", get_xreg_str(field_value(dasm, XSSS), ((void*)0)));
  substitute(dasm->syntax, "XAsrc", "%s", get_xreg_str(field_value(dasm, XSSS), ((void*)0)));
 }

 if (field_valid(dasm, XDDD)) {
  substitute(dasm->syntax, "xdst", "%s", get_xreg_str(field_value(dasm, XDDD), ((void*)0)));
  substitute(dasm->syntax, "XAdst", "%s", get_xreg_str(field_value(dasm, XDDD), ((void*)0)));
 }



 if (field_valid(dasm, FSSS) && field_valid(dasm, FDDD)) {
  if (field_value (dasm, FSSS) == field_value (dasm, FDDD)) {
   substitute (dasm->syntax, "[src,] dst", "dst");
  } else {
   substitute (dasm->syntax, "[src,] dst", "src, dst");
  }
 }

 if (field_valid(dasm, FSSS) && field_valid(dasm, FDDD)) {
  substitute(dasm->syntax, "src1", "%s", get_freg_str(field_value(dasm, FSSS), ((void*)0)));
  substitute(dasm->syntax, "src2", "%s", get_freg_str(field_value(dasm, FDDD), ((void*)0)));

  substitute(dasm->syntax, "dst1", "%s", get_freg_str(field_value(dasm, FSSS), ((void*)0)));
  substitute(dasm->syntax, "dst2", "%s", get_freg_str(field_value(dasm, FDDD), ((void*)0)));
 }


 code &= 0;
 code |= field_valid(dasm, FSSS) ? 0x01 : 0x00;
 code |= field_valid(dasm, FDDD) ? 0x02 : 0x00;

 switch (code) {
 case 0x01:
  substitute(dasm->syntax, "TAx", "%s", get_freg_str(field_value(dasm, FSSS), ((void*)0)));
  break;
 case 0x02:
  substitute(dasm->syntax, "TAx", "%s", get_freg_str(field_value(dasm, FDDD), ((void*)0)));
  substitute(dasm->syntax, "TAy", "%s", get_freg_str(field_value(dasm, FDDD), ((void*)0)));
  break;
 case 0x03:
  substitute(dasm->syntax, "TAx", "%s", get_freg_str(field_value(dasm, FSSS), ((void*)0)));
  substitute(dasm->syntax, "TAy", "%s", get_freg_str(field_value(dasm, FDDD), ((void*)0)));
  break;
 }

 if (field_valid(dasm, FSSS)) {
  substitute(dasm->syntax, "src", "%s", get_freg_str(field_value(dasm, FSSS), ((void*)0)));
 }

 if (field_valid(dasm, FDDD)) {
  substitute(dasm->syntax, "dst", "%s", get_freg_str(field_value(dasm, FDDD), ((void*)0)));
 }

 if (field_valid (dasm, XACS)) {
  substitute (dasm->syntax, "XACsrc", "%s", get_xreg_str (field_value (dasm, XACS), ((void*)0)));
 }

 if (field_valid (dasm, XACD)) {
  substitute (dasm->syntax, "XACdst", "%s", get_xreg_str (field_value (dasm, XACD), ((void*)0)));
 }



 code &= 0;
 code |= field_valid(dasm, SS) ? 0x01 : 0x00;
 code |= field_valid(dasm, SS2) ? 0x02 : 0x00;
 code |= field_valid(dasm, DD) ? 0x10 : 0x00;
 code |= field_valid(dasm, DD2) ? 0x20 : 0x00;

 switch (code) {
 case 0x01:
  substitute(dasm->syntax, "ACx", "ac%d", field_value(dasm, SS));
  break;
 case 0x03:
  substitute(dasm->syntax, "ACx", "ac%d", field_value(dasm, SS));
  substitute(dasm->syntax, "ACy", "ac%d", field_value(dasm, SS2));
  break;
 case 0x11:
  if (field_value(dasm, SS) == field_value(dasm, DD)) {
   substitute(dasm->syntax, "[, ACy]", "");
   substitute(dasm->syntax, "[ACx,] ACy", "ACy");
  } else {
   substitute(dasm->syntax, "[, ACy]", ", ACy");
   substitute(dasm->syntax, "[ACx,] ACy", "ACx, ACy");
  }
  substitute(dasm->syntax, "ACx", "ac%d", field_value(dasm, SS));
  substitute(dasm->syntax, "ACy", "ac%d", field_value(dasm, DD));
  break;
 case 0x33:
  substitute(dasm->syntax, "ACx", "ac%d", field_value(dasm, SS));
  substitute(dasm->syntax, "ACy", "ac%d", field_value(dasm, SS2));
  substitute(dasm->syntax, "ACz", "ac%d", field_value(dasm, DD));
  substitute(dasm->syntax, "ACw", "ac%d", field_value(dasm, DD2));
  break;
 case 0x10:
  substitute(dasm->syntax, "ACx", "ac%d", field_value(dasm, DD));
  break;
 case 0x30:
  substitute(dasm->syntax, "ACx", "ac%d", field_value(dasm, DD));
  substitute(dasm->syntax, "ACy", "ac%d", field_value(dasm, DD2));
  break;
 }
}
