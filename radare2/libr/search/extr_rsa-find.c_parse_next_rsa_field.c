
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;



__attribute__((used)) static const ut8* parse_next_rsa_field(const ut8* start, ut32 *len) {
 *len = 0;
 if (!(start[1] & 128)) {
  len = (ut32*)(start + 1);
  return start + 2;
 } else {
  int i;
  const int lensize = start[1] & 127;
  for (i = 0; i < lensize; i++) {
   *len = (*len << 8) | start[2 + i];
  }
  return start + 2 + lensize;
 }
}
