
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_get_value (int ) ;
 int sda_index ;

__attribute__((used)) static inline int getsda(void)
{
 return (gpio_get_value(sda_index));
}
