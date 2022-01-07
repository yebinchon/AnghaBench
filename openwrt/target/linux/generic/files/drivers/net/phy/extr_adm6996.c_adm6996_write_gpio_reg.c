
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct adm6996_priv {int eedi; int eesk; int eecs; } ;
typedef enum admreg { ____Placeholder_admreg } admreg ;


 int adm6996_gpio_adclk (struct adm6996_priv*,int) ;
 int adm6996_gpio_write (struct adm6996_priv*,int,int*,int) ;
 int gpio_direction_input (int ) ;
 int gpio_direction_output (int ,int ) ;

__attribute__((used)) static void
adm6996_write_gpio_reg(struct adm6996_priv *priv, enum admreg reg, u16 val)
{

 u8 bits[4] = {
  (0x05 << 5) | (reg >> 3),
  (reg << 5) | (u8)(val >> 11),
  (u8)(val >> 3),
  (u8)(val << 5)
 };


 gpio_direction_output(priv->eecs, 0);
 gpio_direction_output(priv->eesk, 0);
 gpio_direction_output(priv->eedi, 0);


 adm6996_gpio_write(priv, 1, bits, 27);


 adm6996_gpio_adclk(priv, 2);


 gpio_direction_input(priv->eecs);
 gpio_direction_input(priv->eesk);
 gpio_direction_input(priv->eedi);
}
