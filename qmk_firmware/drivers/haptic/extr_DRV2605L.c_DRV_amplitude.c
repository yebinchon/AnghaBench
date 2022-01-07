
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DRV_RTP_INPUT ;
 int DRV_write (int ,int ) ;

void DRV_amplitude(uint8_t amplitude) { DRV_write(DRV_RTP_INPUT, amplitude); }
