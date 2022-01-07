
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int UNUSED (int ) ;
 scalar_t__ controls_allowed ;
 int gmlan_switch_init (int) ;

__attribute__((used)) static void tesla_init(int16_t param) {
  UNUSED(param);
  controls_allowed = 0;
  gmlan_switch_init(1);
}
