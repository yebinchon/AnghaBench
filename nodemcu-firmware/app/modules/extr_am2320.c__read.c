
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int EIO ;
 int PLATFORM_I2C_DIRECTION_RECEIVER ;
 int PLATFORM_I2C_DIRECTION_TRANSMITTER ;
 int am2320_i2c_addr ;
 int crc16 (int*,int) ;
 int os_delay_us (int) ;
 int platform_i2c_recv_byte (int ,int) ;
 int platform_i2c_send_address (int ,int ,int ) ;
 int platform_i2c_send_byte (int ,int) ;
 int platform_i2c_send_start (int ) ;
 int platform_i2c_send_stop (int ) ;

__attribute__((used)) static int _read(uint32_t id, void *buf, uint8_t len, uint8_t off)
{
    int i;
    uint8_t *b = (uint8_t *)buf;
    uint16_t crc;


    platform_i2c_send_start(id);
    platform_i2c_send_address(id, am2320_i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
    os_delay_us(800);
    platform_i2c_send_stop(id);


    platform_i2c_send_start(id);
    platform_i2c_send_address(id, am2320_i2c_addr, PLATFORM_I2C_DIRECTION_TRANSMITTER);
    platform_i2c_send_byte(id, 0x03);
    platform_i2c_send_byte(id, off);
    platform_i2c_send_byte(id, len);
    platform_i2c_send_stop(id);


    os_delay_us(1500);
    platform_i2c_send_start(id);
    platform_i2c_send_address(id, am2320_i2c_addr, PLATFORM_I2C_DIRECTION_RECEIVER);
    os_delay_us(30);
    for(i=0; i<len+2; i++)
 b[i] = platform_i2c_recv_byte(id,1);
    crc = platform_i2c_recv_byte(id,1);
    crc |= platform_i2c_recv_byte(id,0) << 8;
    platform_i2c_send_stop(id);

    if(b[0] != 0x3 || b[1] != len)
 return -EIO;
    if(crc != crc16(b,len+2))
 return -EIO;
    return 0;
}
