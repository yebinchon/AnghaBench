
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double int32_t ;


 double bme280_h ;
 double bme280_hc ;
 double pow (double,double) ;

__attribute__((used)) static double bme280_qfe2qnh(int32_t qfe, int32_t h) {
 double hc;
 if (bme280_h == h) {
  hc = bme280_hc;
 } else {
  hc = pow((double)(1.0 - 2.25577e-5 * h), (double)(-5.25588));
  bme280_hc = hc; bme280_h = h;
 }
 double qnh = (double)qfe * hc;
 return qnh;
}
