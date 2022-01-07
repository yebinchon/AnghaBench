
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIOA ;
 int GPIOB ;
 scalar_t__ HW_TYPE_WHITE_PANDA ;
 int PULL_DOWN ;
 int PULL_UP ;
 int detect_with_pull (int ,int,int ) ;
 int has_external_debug_serial ;
 scalar_t__ hw_type ;
 int is_entering_bootmode ;

void detect_configuration(void) {

  has_external_debug_serial = detect_with_pull(GPIOA, 3, PULL_DOWN);
    is_entering_bootmode = 0;

}
