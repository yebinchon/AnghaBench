
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int UNUSED (int ) ;
 scalar_t__ chrysler_camera_detected ;
 scalar_t__ controls_allowed ;

__attribute__((used)) static void chrysler_init(int16_t param) {
  UNUSED(param);
  controls_allowed = 0;
  chrysler_camera_detected = 0;
}
