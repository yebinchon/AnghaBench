
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;



__attribute__((used)) static inline uint8 to_hex_nibble(uint8 b) {
  return b + ( b < 10 ? '0' : 'a' - 10 );
  }
