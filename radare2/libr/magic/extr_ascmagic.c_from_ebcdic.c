
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;


 size_t* ebcdic_to_ascii ;

__attribute__((used)) static void from_ebcdic(const ut8 *buf, size_t nbytes, ut8 *out) {
 size_t i;
 for (i = 0; i < nbytes; i++) {
  out[i] = ebcdic_to_ascii[buf[i]];
 }
}
