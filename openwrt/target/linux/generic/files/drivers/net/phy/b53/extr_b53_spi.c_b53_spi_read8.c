
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b53_device {int dummy; } ;


 int b53_spi_read (struct b53_device*,int ,int ,int *,int) ;

__attribute__((used)) static int b53_spi_read8(struct b53_device *dev, u8 page, u8 reg, u8 *val)
{
 return b53_spi_read(dev, page, reg, val, 1);
}
