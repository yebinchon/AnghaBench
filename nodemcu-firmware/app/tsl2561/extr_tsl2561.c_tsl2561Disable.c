
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsl2561Error_t ;


 int TSL2561_COMMAND_BIT ;
 int TSL2561_CONTROL_POWEROFF ;
 int TSL2561_ERROR_NOINIT ;
 int TSL2561_REGISTER_CONTROL ;
 int _tsl2561Initialised ;
 int tsl2561Write8 (int,int ) ;

tsl2561Error_t tsl2561Disable(void) {
 if (!_tsl2561Initialised)
  return TSL2561_ERROR_NOINIT;


 return tsl2561Write8(TSL2561_COMMAND_BIT | TSL2561_REGISTER_CONTROL,
 TSL2561_CONTROL_POWEROFF);
}
