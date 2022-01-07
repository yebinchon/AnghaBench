
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned int uint16_t ;
struct TYPE_6__ {int RF0R; TYPE_1__* sFIFOMailBox; } ;
struct TYPE_5__ {int RIR; } ;


 TYPE_4__* CAN ;
 int CAN_GAS_INPUT ;
 scalar_t__ CAN_GAS_SIZE ;
 int CAN_RF0R_FMP0 ;
 int CAN_RF0R_RFOM0 ;
 int COUNTER_CYCLE ;
 int ENTER_BOOTLOADER_MAGIC ;
 int ENTER_SOFTLOADER_MAGIC ;
 int FAULT_BAD_CHECKSUM ;
 int FAULT_INVALID ;
 int GET_BYTE (TYPE_1__*,int) ;
 int GET_BYTES_04 (TYPE_1__*) ;
 int GET_BYTES_48 (TYPE_1__*) ;
 int NO_FAULT ;
 int NVIC_SystemReset () ;
 unsigned int current_index ;
 int enter_bootloader_mode ;
 unsigned int gas_set_0 ;
 unsigned int gas_set_1 ;
 int pedal_checksum (int*,scalar_t__) ;
 int puth (unsigned int) ;
 int puts (char*) ;
 int state ;
 scalar_t__ timeout ;

void CAN1_RX0_IRQHandler(void) {
  while ((CAN->RF0R & CAN_RF0R_FMP0) != 0) {



    int address = CAN->sFIFOMailBox[0].RIR >> 21;
    if (address == CAN_GAS_INPUT) {

      if (GET_BYTES_04(&CAN->sFIFOMailBox[0]) == 0xdeadface) {
        if (GET_BYTES_48(&CAN->sFIFOMailBox[0]) == 0x0ab00b1e) {
          enter_bootloader_mode = ENTER_SOFTLOADER_MAGIC;
          NVIC_SystemReset();
        } else if (GET_BYTES_48(&CAN->sFIFOMailBox[0]) == 0x02b00b1e) {
          enter_bootloader_mode = ENTER_BOOTLOADER_MAGIC;
          NVIC_SystemReset();
        } else {
          puts("Failed entering Softloader or Bootloader\n");
        }
      }


      uint8_t dat[8];
      for (int i=0; i<8; i++) {
        dat[i] = GET_BYTE(&CAN->sFIFOMailBox[0], i);
      }
      uint16_t value_0 = (dat[0] << 8) | dat[1];
      uint16_t value_1 = (dat[2] << 8) | dat[3];
      bool enable = ((dat[4] >> 7) & 1U) != 0U;
      uint8_t index = dat[4] & COUNTER_CYCLE;
      if (pedal_checksum(dat, CAN_GAS_SIZE - 1) == dat[5]) {
        if (((current_index + 1U) & COUNTER_CYCLE) == index) {





          if (enable) {
            gas_set_0 = value_0;
            gas_set_1 = value_1;
          } else {

            if ((value_0 == 0U) && (value_1 == 0U)) {
              state = NO_FAULT;
            } else {
              state = FAULT_INVALID;
            }
            gas_set_0 = 0;
            gas_set_1 = 0;
          }

          timeout = 0;
        }
        current_index = index;
      } else {

        state = FAULT_BAD_CHECKSUM;
      }
    }

    CAN->RF0R |= CAN_RF0R_RFOM0;
  }
}
