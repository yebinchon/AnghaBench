
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint8_t ;
typedef int addr ;


 int EXPANDER_ADDR ;
 int I2C_TIMEOUT ;
 int TWI_WritePacket (int,int ,int*,int,unsigned char*,int) ;
 int twi_err_str (int) ;
 int xprintf (char*,int,unsigned char,int ) ;

uint8_t expander_write(uint8_t reg, unsigned char val) {
    uint8_t addr = reg;
    uint8_t result = TWI_WritePacket(EXPANDER_ADDR << 1, I2C_TIMEOUT, &addr, sizeof(addr), &val, sizeof(val));
    if (result) {
        xprintf("mcp: set_register %d = %d failed: %s\n", reg, val, twi_err_str(result));
    }
    return result == 0;
}
