
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int st8 ;
typedef int st64 ;
typedef int st32 ;
typedef int st16 ;



__attribute__((used)) static int signed_compare_gt(ut64 a, ut64 b, ut64 size) {
 int result;
 switch (size) {
 case 1: result = (a & 1) > (b & 1);
  break;
 case 8: result = (st8) a > (st8) b;
  break;
 case 16: result = (st16) a > (st16) b;
  break;
 case 32: result = (st32) a > (st32) b;
  break;
 case 64:
 default: result = (st64) a > (st64) b;
  break;
 }
 return result;
}
