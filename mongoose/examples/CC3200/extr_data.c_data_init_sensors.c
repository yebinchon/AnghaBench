
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LL_ERROR ;
 int LL_INFO ;
 int LOG (int ,char*) ;
 int TMP006_CONV_2 ;
 int * bm222_init (int) ;
 int * s_accel_ctx ;
 int s_tmp006_addr ;
 int tmp006_init (int,int ,int) ;

void data_init_sensors(int tmp006_addr, int bm222_addr) {
  s_tmp006_addr = tmp006_addr;
  if (!tmp006_init(tmp006_addr, TMP006_CONV_2, 0)) {
    LOG(LL_ERROR, ("Failed to init temperature sensor"));
  } else {
    LOG(LL_INFO, ("Temperature sensor initialized"));
  }
  s_accel_ctx = bm222_init(bm222_addr);
  if (s_accel_ctx == ((void*)0)) {
    LOG(LL_ERROR, ("Failed to init accelerometer"));
  } else {
    LOG(LL_INFO, ("Accelerometer initialized"));
  }
}
