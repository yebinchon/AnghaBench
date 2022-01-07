
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tsl2561Error_t ;


 int PLATFORM_I2C_SPEED_SLOW ;
 int TSL2561_ERROR_OK ;
 int _tsl2561Gain ;
 int _tsl2561Initialised ;
 int _tsl2561IntegrationTime ;
 int platform_i2c_setup (int ,int ,int ,int ) ;
 int tsl2561SetTiming (int ,int ) ;
 int tsl2561_i2c_id ;

tsl2561Error_t tsl2561Init(uint8_t sda, uint8_t scl) {

 platform_i2c_setup(tsl2561_i2c_id, sda, scl, PLATFORM_I2C_SPEED_SLOW);

 _tsl2561Initialised = 1;


 tsl2561SetTiming(_tsl2561IntegrationTime, _tsl2561Gain);



 return TSL2561_ERROR_OK;
}
