
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int cycles; } ;
typedef TYPE_1__ RAnalOp ;


 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static void _6502_anal_esil_get_addr_pattern3(RAnalOp *op, const ut8* data, int len, char* addrbuf, int addrsize, char reg) {

 if (len < 1) {
  return;
 }
 switch (data[0] & 0x1f) {
 case 0x00:
  op->cycles = 2;
  snprintf (addrbuf, addrsize, "0x%02x", (len > 1) ? data[1]: 0);
  break;
 case 0x08:
  op->cycles = 2;
  snprintf (addrbuf, addrsize, "a");
  break;
 case 0x04:
  op->cycles = 5;
  snprintf (addrbuf, addrsize, "0x%02x", (len > 1)? data[1]: 0);
  break;
 case 0x14:
  op->cycles = 6;
  snprintf (addrbuf, addrsize, "%c,0x%02x,+", reg, (len>1)? data[1]:0);
  break;
 case 0x0c:
  op->cycles = 6;
  snprintf (addrbuf, addrsize, "0x%04x", (len>2)? data[1] | data[2] << 8: 0);
  break;
 case 0x1c:
  op->cycles = 7;
  snprintf (addrbuf, addrsize, "%c,0x%04x,+", reg, (len>2)? data[1] | data[2] << 8: 0);
  break;
 }
}
