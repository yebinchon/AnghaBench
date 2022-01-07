
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VT_BTYPE ;
 int VT_DOUBLE ;
 int VT_FLOAT ;
 int VT_LDOUBLE ;
 int VT_QFLOAT ;

bool is_float(int t) {
 int bt;
 bt = t & VT_BTYPE;
 return bt == VT_LDOUBLE || bt == VT_DOUBLE || bt == VT_FLOAT || bt == VT_QFLOAT;
}
