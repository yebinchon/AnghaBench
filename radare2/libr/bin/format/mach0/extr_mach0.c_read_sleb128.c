
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int* p; } ;
typedef TYPE_1__ ulebr ;
typedef int st64 ;


 int eprintf (char*) ;

__attribute__((used)) static st64 read_sleb128(ulebr *r, ut8 *end) {
 st64 result = 0;
 int bit = 0;
 ut8 byte = 0;
 ut8 *p = r->p;
 do {
  if (p == end) {
   eprintf ("malformed sleb128\n");
   break;
  }
  byte = *p++;
  result |= (((st64)(byte & 0x7f)) << bit);
  bit += 7;
  if (bit > 63) {
   eprintf ("too large sleb128 shift\n");
   return result;
  }
 } while (byte & 0x80);

 if ((byte & 0x40)) {
  result |= (-1LL) << bit;
 }
 r->p = p;
 return result;
}
