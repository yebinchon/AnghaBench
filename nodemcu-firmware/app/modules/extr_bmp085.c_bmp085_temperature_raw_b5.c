
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int16_t ;
struct TYPE_2__ {int AC6; int AC5; int MC; int MD; } ;


 int PLATFORM_I2C_DIRECTION_TRANSMITTER ;
 TYPE_1__ bmp085_data ;
 int bmp085_i2c_addr ;
 int bmp085_i2c_id ;
 int os_delay_us (int) ;
 int platform_i2c_send_address (int ,int ,int ) ;
 int platform_i2c_send_byte (int ,int) ;
 int platform_i2c_send_start (int ) ;
 int platform_i2c_send_stop (int ) ;
 int r16 (int ,int) ;

__attribute__((used)) static uint32_t bmp085_temperature_raw_b5(void) {
    int16_t t, X1, X2;

    platform_i2c_send_start(bmp085_i2c_id);
    platform_i2c_send_address(bmp085_i2c_id, bmp085_i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
    platform_i2c_send_byte(bmp085_i2c_id, 0xF4);
    platform_i2c_send_byte(bmp085_i2c_id, 0x2E);
    platform_i2c_send_stop(bmp085_i2c_id);


    os_delay_us(4500);

    t = r16(bmp085_i2c_id, 0xF6);
    X1 = ((t - bmp085_data.AC6) * bmp085_data.AC5) >> 15;
    X2 = (bmp085_data.MC << 11)/ (X1 + bmp085_data.MD);

    return X1 + X2;
}
