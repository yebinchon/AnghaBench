
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int* i4004_ins_len ;

__attribute__((used)) static int i4004_get_ins_len (ut8 hex) {
 ut8 high = (hex & 0xf0)>>4;
 int ret = i4004_ins_len[high];
 if (ret == 3) {
  ret = (hex & 1) ? 1 : 2;
 }
 return ret;
}
