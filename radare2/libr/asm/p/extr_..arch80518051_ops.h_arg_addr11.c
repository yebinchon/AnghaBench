
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;



__attribute__((used)) static inline ut16 arg_addr11 (ut16 pc, const ut8 *buf) {

 return (pc & 0xf800) + ((buf[0] & 0xe0) << 3) + buf[1];
}
