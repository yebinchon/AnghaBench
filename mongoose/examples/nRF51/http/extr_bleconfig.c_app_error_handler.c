
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int ALL_APP_LED ;
 int APPL_LOG (char*,int ,int ,int const*) ;
 int LEDS_ON (int ) ;

void app_error_handler(uint32_t error_code, uint32_t line_num, const uint8_t * p_file_name)
{

  APPL_LOG("[** ASSERT **]: Error 0x%08lX, Line %ld, File %s\r\n",error_code, line_num, p_file_name);
  LEDS_ON(ALL_APP_LED);
  for(;;)
  {
  }



}
