
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;
typedef unsigned long uint16_t ;




 unsigned int TSL2561_LUX_B1C ;
 unsigned int TSL2561_LUX_B1T ;
 unsigned int TSL2561_LUX_B2C ;
 unsigned int TSL2561_LUX_B2T ;
 unsigned int TSL2561_LUX_B3C ;
 unsigned int TSL2561_LUX_B3T ;
 unsigned int TSL2561_LUX_B4C ;
 unsigned int TSL2561_LUX_B4T ;
 unsigned int TSL2561_LUX_B5C ;
 unsigned int TSL2561_LUX_B5T ;
 unsigned int TSL2561_LUX_B6C ;
 unsigned int TSL2561_LUX_B6T ;
 unsigned int TSL2561_LUX_B7C ;
 unsigned int TSL2561_LUX_B7T ;
 unsigned int TSL2561_LUX_B8C ;
 unsigned int TSL2561_LUX_B8T ;
 int TSL2561_LUX_CHSCALE ;
 unsigned long TSL2561_LUX_CHSCALE_TINT0 ;
 unsigned long TSL2561_LUX_CHSCALE_TINT1 ;
 unsigned long TSL2561_LUX_K1C ;
 unsigned long TSL2561_LUX_K1T ;
 unsigned long TSL2561_LUX_K2C ;
 unsigned long TSL2561_LUX_K2T ;
 unsigned long TSL2561_LUX_K3C ;
 unsigned long TSL2561_LUX_K3T ;
 unsigned long TSL2561_LUX_K4C ;
 unsigned long TSL2561_LUX_K4T ;
 unsigned long TSL2561_LUX_K5C ;
 unsigned long TSL2561_LUX_K5T ;
 unsigned long TSL2561_LUX_K6C ;
 unsigned long TSL2561_LUX_K6T ;
 unsigned long TSL2561_LUX_K7C ;
 unsigned long TSL2561_LUX_K7T ;
 unsigned long TSL2561_LUX_K8C ;
 unsigned long TSL2561_LUX_K8T ;
 int TSL2561_LUX_LUXSCALE ;
 unsigned int TSL2561_LUX_M1C ;
 unsigned int TSL2561_LUX_M1T ;
 unsigned int TSL2561_LUX_M2C ;
 unsigned int TSL2561_LUX_M2T ;
 unsigned int TSL2561_LUX_M3C ;
 unsigned int TSL2561_LUX_M3T ;
 unsigned int TSL2561_LUX_M4C ;
 unsigned int TSL2561_LUX_M4T ;
 unsigned int TSL2561_LUX_M5C ;
 unsigned int TSL2561_LUX_M5T ;
 unsigned int TSL2561_LUX_M6C ;
 unsigned int TSL2561_LUX_M6T ;
 unsigned int TSL2561_LUX_M7C ;
 unsigned int TSL2561_LUX_M7T ;
 unsigned int TSL2561_LUX_M8C ;
 unsigned int TSL2561_LUX_M8T ;
 int TSL2561_LUX_RATIOSCALE ;
 scalar_t__ TSL2561_PACKAGE_CS ;
 int _tsl2561Gain ;
 int _tsl2561IntegrationTime ;
 scalar_t__ tsl2561Package ;

uint32_t tsl2561CalculateLux(uint16_t ch0, uint16_t ch1) {
 unsigned long chScale;
 unsigned long channel1;
 unsigned long channel0;

 switch (_tsl2561IntegrationTime) {
 case 128:
  chScale = TSL2561_LUX_CHSCALE_TINT0;
  break;
 case 129:
  chScale = TSL2561_LUX_CHSCALE_TINT1;
  break;
 default:
  chScale = (1 << TSL2561_LUX_CHSCALE);
  break;
 }


 if (!_tsl2561Gain)
  chScale = chScale << 4;


 channel0 = (ch0 * chScale) >> TSL2561_LUX_CHSCALE;
 channel1 = (ch1 * chScale) >> TSL2561_LUX_CHSCALE;


 unsigned long ratio1 = 0;
 if (channel0 != 0)
  ratio1 = (channel1 << (TSL2561_LUX_RATIOSCALE + 1)) / channel0;


 unsigned long ratio = (ratio1 + 1) >> 1;

 unsigned int b, m;

 if (tsl2561Package == TSL2561_PACKAGE_CS){
  if ((ratio >= 0) && (ratio <= TSL2561_LUX_K1C)) {
   b = TSL2561_LUX_B1C;
   m = TSL2561_LUX_M1C;
  } else if (ratio <= TSL2561_LUX_K2C) {
   b = TSL2561_LUX_B2C;
   m = TSL2561_LUX_M2C;
  } else if (ratio <= TSL2561_LUX_K3C) {
   b = TSL2561_LUX_B3C;
   m = TSL2561_LUX_M3C;
  } else if (ratio <= TSL2561_LUX_K4C) {
   b = TSL2561_LUX_B4C;
   m = TSL2561_LUX_M4C;
  } else if (ratio <= TSL2561_LUX_K5C) {
   b = TSL2561_LUX_B5C;
   m = TSL2561_LUX_M5C;
  } else if (ratio <= TSL2561_LUX_K6C) {
   b = TSL2561_LUX_B6C;
   m = TSL2561_LUX_M6C;
  } else if (ratio <= TSL2561_LUX_K7C) {
   b = TSL2561_LUX_B7C;
   m = TSL2561_LUX_M7C;
  } else if (ratio > TSL2561_LUX_K8C) {
   b = TSL2561_LUX_B8C;
   m = TSL2561_LUX_M8C;
  }
 }
 else{
  if ((ratio >= 0) && (ratio <= TSL2561_LUX_K1T))
  { b=TSL2561_LUX_B1T; m=TSL2561_LUX_M1T;}
  else if (ratio <= TSL2561_LUX_K2T)
  { b=TSL2561_LUX_B2T; m=TSL2561_LUX_M2T;}
  else if (ratio <= TSL2561_LUX_K3T)
  { b=TSL2561_LUX_B3T; m=TSL2561_LUX_M3T;}
  else if (ratio <= TSL2561_LUX_K4T)
  { b=TSL2561_LUX_B4T; m=TSL2561_LUX_M4T;}
  else if (ratio <= TSL2561_LUX_K5T)
  { b=TSL2561_LUX_B5T; m=TSL2561_LUX_M5T;}
  else if (ratio <= TSL2561_LUX_K6T)
  { b=TSL2561_LUX_B6T; m=TSL2561_LUX_M6T;}
  else if (ratio <= TSL2561_LUX_K7T)
  { b=TSL2561_LUX_B7T; m=TSL2561_LUX_M7T;}
  else if (ratio > TSL2561_LUX_K8T)
  { b=TSL2561_LUX_B8T; m=TSL2561_LUX_M8T;}
 }

 unsigned long temp;
 temp = ((channel0 * b) - (channel1 * m));


 if (temp < 0)
  temp = 0;


 temp += (1 << (TSL2561_LUX_LUXSCALE - 1));


 uint32_t lux = temp >> TSL2561_LUX_LUXSCALE;


 return lux;
}
