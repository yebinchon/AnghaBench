
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* Allowed_Escapes_bits ;

__attribute__((used)) static int is_allowed_escape(unsigned c) {
  return (c < 0x80) && (Allowed_Escapes_bits[c >> 5] & (1 << (31 - (c & 31))));
}
