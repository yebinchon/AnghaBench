
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RIR; int RDTR; int RDLR; int member_0; } ;
typedef TYPE_1__ CAN_FIFOMailBox_TypeDef ;


 int get_bit_message (char*,TYPE_1__*) ;
 int printf (char*,...) ;

int main() {
  char out[300];
  CAN_FIFOMailBox_TypeDef to_bang = {0};
  to_bang.RIR = 20 << 21;
  to_bang.RDTR = 1;
  to_bang.RDLR = 1;

  int len = get_bit_message(out, &to_bang);
  printf("T:");
  for (int i = 0; i < len; i++) {
    printf("%d", out[i]);
  }
  printf("\n");
  printf("R:0000010010100000100010000010011110111010100111111111111111");
  printf("\n");
  return 0;
}
