
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int* iconds ;

__attribute__((used)) static int op_cond(const ut8 *data) {
 ut8 b = data[3] >> 4;
 if (b == 0xf) {
  return 0;
 }
 return iconds[b];
}
