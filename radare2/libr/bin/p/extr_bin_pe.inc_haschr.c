
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef unsigned int ut64 ;
typedef int ut16 ;
struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ RBinFile ;


 int* r_buf_data (int ,unsigned int*) ;

__attribute__((used)) static int haschr(const RBinFile* bf, ut16 dllCharacteristic) {
 const ut8 *buf;
 unsigned int idx;
 ut64 sz;
 if (!bf) {
  return 0;
 }
 buf = r_buf_data (bf->buf, &sz);
 if (!buf) {
  return 0;
 }
 idx = (buf[0x3c] | (buf[0x3d]<<8));
 if (idx + 0x5E + 1 >= sz ) {
  return 0;
 }


 return ((*(ut16*)(buf + idx + 0x5E)) & dllCharacteristic);
}
