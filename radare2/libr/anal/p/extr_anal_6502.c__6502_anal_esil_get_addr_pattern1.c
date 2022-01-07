
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int cycles; } ;
typedef TYPE_1__ RAnalOp ;


 int snprintf (char*,int,char*,int const) ;

__attribute__((used)) static void _6502_anal_esil_get_addr_pattern1(RAnalOp *op, const ut8* data, int len, char* addrbuf, int addrsize) {
 if (len < 1) {
  return;
 }

 switch (data[0] & 0x1f) {
 case 0x09:
  op->cycles = 2;
  snprintf (addrbuf, addrsize,"0x%02x", (len > 1)? data[1]: 0);
  break;
 case 0x05:
  op->cycles = 3;
  snprintf (addrbuf, addrsize,"0x%02x", (len > 1)? data[1]: 0);
  break;
 case 0x15:
  op->cycles = 4;
  snprintf (addrbuf, addrsize,"x,0x%02x,+", (len > 1)? data[1]: 0);
  break;
 case 0x0d:
  op->cycles = 4;
  snprintf (addrbuf, addrsize,"0x%04x", (len > 2) ? (data[1] | data[2] << 8): 0);
  break;
 case 0x1d:

  op->cycles = 4;
  snprintf (addrbuf, addrsize,"x,0x%04x,+", (len > 2) ? data[1] | data[2] << 8: 0);
  break;
 case 0x19:

  op->cycles = 4;
  snprintf (addrbuf, addrsize,"y,0x%04x,+", (len > 2)? data[1] | data[2] << 8: 0);
  break;
 case 0x01:
  op->cycles = 6;
  snprintf (addrbuf, addrsize,"x,0x%02x,+,[2]", (len > 1)? data[1]: 0);
  break;
 case 0x11:

  op->cycles = 5;
  snprintf (addrbuf, addrsize,"y,0x%02x,[2],+", (len > 1) ? data[1]: 0);
  break;
 }
}
