
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ tsl2561Error_t ;


 int TSL2561_COMMAND_BIT ;
 scalar_t__ TSL2561_ERROR_NOINIT ;
 scalar_t__ TSL2561_ERROR_OK ;


 int TSL2561_REGISTER_CHAN0_LOW ;
 int TSL2561_REGISTER_CHAN1_LOW ;
 int TSL2561_WORD_BIT ;
 int _tsl2561Initialised ;
 int _tsl2561IntegrationTime ;
 int os_delay_us (int) ;
 scalar_t__ tsl2561Disable () ;
 scalar_t__ tsl2561Enable () ;
 scalar_t__ tsl2561Read16 (int,int *) ;

tsl2561Error_t tsl2561GetLuminosity(uint16_t *broadband, uint16_t *ir) {
 if (!_tsl2561Initialised)
  return TSL2561_ERROR_NOINIT;

 tsl2561Error_t error = TSL2561_ERROR_OK;


 error = tsl2561Enable();
 if (error)
  return error;


 switch (_tsl2561IntegrationTime) {
 case 128:
  os_delay_us(14000);
  break;
 case 129:
  os_delay_us(102000);
  break;
 default:
  os_delay_us(404000);
  break;
 }


 error = tsl2561Read16(
 TSL2561_COMMAND_BIT | TSL2561_WORD_BIT | TSL2561_REGISTER_CHAN0_LOW, broadband);
 if (error)
  return error;


 error = tsl2561Read16(
 TSL2561_COMMAND_BIT | TSL2561_WORD_BIT | TSL2561_REGISTER_CHAN1_LOW, ir);
 if (error)
  return error;


 error = tsl2561Disable();
 if (error)
  return error;

 return error;
}
