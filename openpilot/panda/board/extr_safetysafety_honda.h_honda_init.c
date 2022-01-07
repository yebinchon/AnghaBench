
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int UNUSED (int ) ;
 scalar_t__ controls_allowed ;
 int honda_alt_brake_msg ;
 int honda_bosch_hardware ;

__attribute__((used)) static void honda_init(int16_t param) {
  UNUSED(param);
  controls_allowed = 0;
  honda_bosch_hardware = 0;
  honda_alt_brake_msg = 0;
}
