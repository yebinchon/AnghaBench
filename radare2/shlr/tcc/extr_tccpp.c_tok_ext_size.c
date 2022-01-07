
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LDOUBLE_SIZE ;
 int tcc_error (char*) ;

__attribute__((used)) static inline int tok_ext_size(int t)
{
 switch (t) {

 case 137:
 case 134:
 case 140:
 case 132:
 case 138:
 case 131:
  return 1;
 case 128:
 case 130:
 case 129:
  tcc_error ("unsupported token");
  return 1;
 case 139:
 case 135:
 case 133:
  return 2;
 case 136:
  return LDOUBLE_SIZE / 4;
 default:
  return 0;
 }
}
