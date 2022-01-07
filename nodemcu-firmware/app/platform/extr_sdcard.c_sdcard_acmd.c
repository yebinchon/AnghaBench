
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int CMD55 ;
 int sdcard_command (int ,int ) ;

__attribute__((used)) static uint8_t sdcard_acmd( uint8_t cmd, uint32_t arg ) {
  sdcard_command( CMD55, 0 );
  return sdcard_command( cmd, arg );
}
