
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CAN_FIFOMailBox_TypeDef ;


 int GET_ADDR (int *) ;
 int GET_LEN (int *) ;

__attribute__((used)) static int elm327_tx_hook(CAN_FIFOMailBox_TypeDef *to_send) {

  int tx = 1;
  int addr = GET_ADDR(to_send);
  int len = GET_LEN(to_send);


  if (len != 8) {
    tx = 0;
  }



  if ((addr != 0x18DB33F1) && ((addr & 0x1FFF00FF) != 0x18DA00F1) &&
      ((addr != 0x7DF) && ((addr & 0x7F8) != 0x7E0))) {
    tx = 0;
  }
  return tx;
}
