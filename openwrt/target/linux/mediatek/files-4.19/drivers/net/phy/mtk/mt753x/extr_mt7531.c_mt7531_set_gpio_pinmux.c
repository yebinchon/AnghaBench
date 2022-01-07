
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gsw_mt753x {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int * gpio_int_funcs ;
 int * gpio_int_pins ;
 int * gpio_mdc_funcs ;
 int * gpio_mdc_pins ;
 int * gpio_mdio_funcs ;
 int * gpio_mdio_pins ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int pinmux_set_mux_7531 (struct gsw_mt753x*,int ,int ) ;

__attribute__((used)) static int mt7531_set_gpio_pinmux(struct gsw_mt753x *gsw)
{
 u32 group = 0;
 struct device_node *np = gsw->dev->of_node;


 pinmux_set_mux_7531(gsw, gpio_int_pins[0], gpio_int_funcs[0]);

 of_property_read_u32(np, "mediatek,mdio_master_pinmux", &group);


 if (group > 0 && group <= 2) {
  group--;
  pinmux_set_mux_7531(gsw, gpio_mdc_pins[group],
        gpio_mdc_funcs[group]);
  pinmux_set_mux_7531(gsw, gpio_mdio_pins[group],
        gpio_mdio_funcs[group]);
 }

 return 0;
}
