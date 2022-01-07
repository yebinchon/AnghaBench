
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DRV_GO ;
 int DRV_WAVEFORM_SEQ_1 ;
 int DRV_write (int ,int) ;

void DRV_pulse(uint8_t sequence) {
    DRV_write(DRV_GO, 0x00);
    DRV_write(DRV_WAVEFORM_SEQ_1, sequence);
    DRV_write(DRV_GO, 0x01);
}
