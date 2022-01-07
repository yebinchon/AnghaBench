
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LVL_SHIFT_EN_HI ;
 int LVL_SHIFT_EN_INIT ;
 int LVL_SHIFT_EN_LO ;
 int SPI_Init (int) ;
 int SPI_MODE_MASTER ;
 int SPI_SPEED_FCPU_DIV_8 ;
 int TP_CS_HI ;
 int TP_CS_INIT ;
 int TP_RESET_HI ;
 int TP_RESET_INIT ;
 int TP_RESET_LO ;
 int TP_SHUTDOWN_INIT ;
 int TP_SHUTDOWN_LO ;
 int wait_ms (int) ;

void pointing_device_init(void){

  SPI_Init(SPI_SPEED_FCPU_DIV_8 | SPI_MODE_MASTER);


  TP_RESET_INIT;
  TP_SHUTDOWN_INIT;
  TP_CS_INIT;
  LVL_SHIFT_EN_INIT;


  LVL_SHIFT_EN_LO;
  wait_ms(100);
  LVL_SHIFT_EN_HI;


  TP_RESET_HI;
  wait_ms(100);
  TP_RESET_LO;


  TP_SHUTDOWN_LO;

  TP_CS_HI;
}
