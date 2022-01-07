
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgbsps_setall (int ,int ,int ) ;

void rgbsps_turnoff(void) {
  rgbsps_setall(0, 0, 0);
}
