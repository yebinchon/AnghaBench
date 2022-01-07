
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int footer ;
struct TYPE_3__ {int RDTR; int RIR; int RDLR; } ;
typedef TYPE_1__ CAN_FIFOMailBox_TypeDef ;


 int MAX_BITS_CAN_PACKET ;
 int append_bits (char*,int,char*,int) ;
 int append_crc (char*,int) ;
 int append_int (char*,int,unsigned char,int) ;
 int do_bitstuff (char*,char*,int) ;

int get_bit_message(char *out, CAN_FIFOMailBox_TypeDef *to_bang) {
  char pkt[MAX_BITS_CAN_PACKET];
  char footer[] = {
    1,
    1,
    1,
    1,1,1,1,1,1,1,
    1,1,1,
  };

  int len = 0;


  int dlc_len = to_bang->RDTR & 0xF;
  len = append_int(pkt, len, 0, 1);

  if ((to_bang->RIR & 4) != 0) {

    len = append_int(pkt, len, to_bang->RIR >> 21, 11);
    len = append_int(pkt, len, 3, 2);
    len = append_int(pkt, len, (to_bang->RIR >> 3) & ((1U << 18) - 1U), 18);
    len = append_int(pkt, len, 0, 3);
  } else {

    len = append_int(pkt, len, to_bang->RIR >> 21, 11);
    len = append_int(pkt, len, 0, 3);
  }

  len = append_int(pkt, len, dlc_len, 4);


  for (int i = 0; i < dlc_len; i++) {
    unsigned char dat = ((unsigned char *)(&(to_bang->RDLR)))[i];
    len = append_int(pkt, len, dat, 8);
  }


  len = append_crc(pkt, len);


  len = do_bitstuff(out, pkt, len);


  len = append_bits(out, len, footer, sizeof(footer));
  return len;
}
