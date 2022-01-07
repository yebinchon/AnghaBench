
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dig_P7; scalar_t__ dig_P8; scalar_t__ dig_P9; scalar_t__ dig_P1; scalar_t__ dig_P2; scalar_t__ dig_P3; scalar_t__ dig_P4; scalar_t__ dig_P5; scalar_t__ dig_P6; } ;
typedef int BME280_U32_t ;
typedef int BME280_S64_t ;
typedef int BME280_S32_t ;


 TYPE_1__ bme280_data ;
 scalar_t__ bme280_t_fine ;

__attribute__((used)) static BME280_U32_t bme280_compensate_P(BME280_S32_t adc_P) {
 BME280_S64_t var1, var2, p;
 var1 = ((BME280_S64_t)bme280_t_fine) - 128000;
 var2 = var1 * var1 * (BME280_S64_t)bme280_data.dig_P6;
 var2 = var2 + ((var1*(BME280_S64_t)bme280_data.dig_P5)<<17);
 var2 = var2 + (((BME280_S64_t)bme280_data.dig_P4)<<35);
 var1 = ((var1 * var1 * (BME280_S64_t)bme280_data.dig_P3)>>8) + ((var1 * (BME280_S64_t)bme280_data.dig_P2)<<12);
 var1 = (((((BME280_S64_t)1)<<47)+var1))*((BME280_S64_t)bme280_data.dig_P1)>>33;
 if (var1 == 0) {
  return 0;
 }
 p = 1048576-adc_P;
 p = (((p<<31)-var2)*3125)/var1;
 var1 = (((BME280_S64_t)bme280_data.dig_P9) * (p>>13) * (p>>13)) >> 25;
 var2 = (((BME280_S64_t)bme280_data.dig_P8) * p) >> 19;
 p = ((p + var1 + var2) >> 8) + (((BME280_S64_t)bme280_data.dig_P7)<<4);
 p = (p * 10) >> 8;
 return (BME280_U32_t)p;
}
