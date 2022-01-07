
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int dummy; } ;
struct ar8327_led_entry {int shift; int reg; } ;
typedef enum ar8327_led_pattern { ____Placeholder_ar8327_led_pattern } ar8327_led_pattern ;


 int AR8327_REG_LED_CTRL (int ) ;
 struct ar8327_led_entry* ar8327_led_map ;
 int ar8xxx_rmw (struct ar8xxx_priv*,int ,int,int) ;

__attribute__((used)) static void
ar8327_set_led_pattern(struct ar8xxx_priv *priv, unsigned int led_num,
         enum ar8327_led_pattern pattern)
{
 const struct ar8327_led_entry *entry;

 entry = &ar8327_led_map[led_num];
 ar8xxx_rmw(priv, AR8327_REG_LED_CTRL(entry->reg),
     (3 << entry->shift), pattern << entry->shift);
}
