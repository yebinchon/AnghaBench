
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FUNC_GPIO0 ;
 int FUNC_GPIO2 ;
 int FUNC_GPIO4 ;
 int FUNC_GPIO5 ;
 int PERIPHS_IO_MUX_GPIO0_U ;
 int PERIPHS_IO_MUX_GPIO2_U ;
 int PERIPHS_IO_MUX_GPIO4_U ;
 int PERIPHS_IO_MUX_GPIO5_U ;
 int PIN_FUNC_SELECT (int ,int ) ;

__attribute__((used)) static void enable_pin_mux(int pin) {

    switch (pin) {
    case 0:
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO0_U, FUNC_GPIO0);
        break;
    case 2:
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO2_U, FUNC_GPIO2);
        break;
    case 4:
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO4_U, FUNC_GPIO4);
        break;
    case 5:
        PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO5_U, FUNC_GPIO5);
        break;
    default:
        break;
    }
}
