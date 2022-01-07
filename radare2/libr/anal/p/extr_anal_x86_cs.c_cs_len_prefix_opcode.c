
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static int cs_len_prefix_opcode(uint8_t *item) {
 int i, len = 0;
 for (i = 0; i < 4; i++) {
  len += (item[i] != 0) ? 1 : 0;
 }
 return len;
}
