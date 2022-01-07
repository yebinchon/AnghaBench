
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BL_BLUE ;
 int BL_GREEN ;
 int BL_RED ;
 int xprintf (char*,int) ;

void backlight_set(uint8_t level)
{

 switch (level)
 {
 case 0:

  BL_RED = 0xFFFF;
  BL_GREEN = 0xFFFF;
  BL_BLUE = 0xFFFF;
  break;
 case 1:

  BL_RED = 0x0000;
  BL_GREEN = 0xFFFF;
  BL_BLUE = 0xFFFF;
  break;
 case 2:

  BL_RED = 0xFFFF;
  BL_GREEN = 0x0000;
  BL_BLUE = 0xFFFF;
  break;
 case 3:

  BL_RED = 0xFFFF;
  BL_GREEN = 0xFFFF;
  BL_BLUE = 0x0000;
  break;
 case 4:

  BL_RED = 0x4000;
  BL_GREEN = 0x4000;
  BL_BLUE = 0x4000;
  break;
 case 5:

  BL_RED = 0x0000;
  BL_GREEN = 0xFFFF;
  BL_BLUE = 0x0000;
  break;
 case 6:

  BL_RED = 0x0000;
  BL_GREEN = 0x0000;
  BL_BLUE = 0xFFFF;
  break;
 default:
  xprintf("Unknown level: %d\n", level);
 }
}
