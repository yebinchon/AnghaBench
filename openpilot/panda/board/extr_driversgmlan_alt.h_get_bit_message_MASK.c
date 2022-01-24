#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  footer ;
struct TYPE_3__ {int RDTR; int RIR; int /*<<< orphan*/  RDLR; } ;
typedef  TYPE_1__ CAN_FIFOMailBox_TypeDef ;

/* Variables and functions */
 int MAX_BITS_CAN_PACKET ; 
 int FUNC0 (char*,int,char*,int) ; 
 int FUNC1 (char*,int) ; 
 int FUNC2 (char*,int,unsigned char,int) ; 
 int FUNC3 (char*,char*,int) ; 

int FUNC4(char *out, CAN_FIFOMailBox_TypeDef *to_bang) {
  char pkt[MAX_BITS_CAN_PACKET];
  char footer[] = {
    1,  // CRC delimiter
    1,  // ACK
    1,  // ACK delimiter
    1,1,1,1,1,1,1, // EOF
    1,1,1, // IFS
  };

  int len = 0;

  // test packet
  int dlc_len = to_bang->RDTR & 0xF;
  len = FUNC2(pkt, len, 0, 1);    // Start-of-frame

  if ((to_bang->RIR & 4) != 0) {
    // extended identifier
    len = FUNC2(pkt, len, to_bang->RIR >> 21, 11);  // Identifier
    len = FUNC2(pkt, len, 3, 2);    // SRR+IDE
    len = FUNC2(pkt, len, (to_bang->RIR >> 3) & ((1U << 18) - 1U), 18);  // Identifier
    len = FUNC2(pkt, len, 0, 3);    // RTR+r1+r0
  } else {
    // standard identifier
    len = FUNC2(pkt, len, to_bang->RIR >> 21, 11);  // Identifier
    len = FUNC2(pkt, len, 0, 3);    // RTR+IDE+reserved
  }

  len = FUNC2(pkt, len, dlc_len, 4);    // Data length code

  // append data
  for (int i = 0; i < dlc_len; i++) {
    unsigned char dat = ((unsigned char *)(&(to_bang->RDLR)))[i];
    len = FUNC2(pkt, len, dat, 8);
  }

  // append crc
  len = FUNC1(pkt, len);

  // do bitstuffing
  len = FUNC3(out, pkt, len);

  // append footer
  len = FUNC0(out, len, footer, sizeof(footer));
  return len;
}