
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {void* MD; void* MC; void* MB; void* B2; void* B1; void* AC6; void* AC5; void* AC4; void* AC3; void* AC2; void* AC1; } ;


 TYPE_1__ bmp085_data ;
 int bmp085_i2c_id ;
 void* r16 (int ,int) ;
 void* r16u (int ,int) ;

__attribute__((used)) static int bmp085_setup(lua_State* L) {
    (void)L;

    bmp085_data.AC1 = r16(bmp085_i2c_id, 0xAA);
    bmp085_data.AC2 = r16(bmp085_i2c_id, 0xAC);
    bmp085_data.AC3 = r16(bmp085_i2c_id, 0xAE);
    bmp085_data.AC4 = r16u(bmp085_i2c_id, 0xB0);
    bmp085_data.AC5 = r16u(bmp085_i2c_id, 0xB2);
    bmp085_data.AC6 = r16u(bmp085_i2c_id, 0xB4);
    bmp085_data.B1 = r16(bmp085_i2c_id, 0xB6);
    bmp085_data.B2 = r16(bmp085_i2c_id, 0xB8);
    bmp085_data.MB = r16(bmp085_i2c_id, 0xBA);
    bmp085_data.MC = r16(bmp085_i2c_id, 0xBC);
    bmp085_data.MD = r16(bmp085_i2c_id, 0xBE);

    return 0;
}
