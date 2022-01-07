
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct device_node {int dummy; } ;


 scalar_t__ of_property_read_u32 (struct device_node*,char const*,scalar_t__*) ;

__attribute__((used)) static void ag71xx_of_bit(struct device_node *np, const char *prop,
     u32 *reg, u32 mask)
{
 u32 val;

 if (of_property_read_u32(np, prop, &val))
  return;

 if (val)
  *reg |= mask;
 else
  *reg &= ~mask;
}
