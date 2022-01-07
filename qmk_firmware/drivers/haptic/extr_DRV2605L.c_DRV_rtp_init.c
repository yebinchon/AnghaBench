
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRV_GO ;
 int DRV_MODE ;
 int DRV_RTP_INPUT ;
 int DRV_write (int ,int) ;

void DRV_rtp_init(void) {
    DRV_write(DRV_GO, 0x00);
    DRV_write(DRV_RTP_INPUT, 20);
    DRV_write(DRV_MODE, 0x05);
    DRV_write(DRV_GO, 0x01);
}
