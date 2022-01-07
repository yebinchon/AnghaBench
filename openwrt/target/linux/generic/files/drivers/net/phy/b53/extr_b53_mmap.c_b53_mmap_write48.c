
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct b53_device {int dummy; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int b53_mmap_write16 (struct b53_device*,int,int,int ) ;
 int b53_mmap_write32 (struct b53_device*,int,int,int ) ;

__attribute__((used)) static int b53_mmap_write48(struct b53_device *dev, u8 page, u8 reg,
        u64 value)
{
 if (WARN_ON(reg % 2))
  return -EINVAL;

 if (reg % 4) {
  u32 hi = (u32)(value >> 16);
  u16 lo = (u16)value;

  b53_mmap_write16(dev, page, reg, lo);
  b53_mmap_write32(dev, page, reg + 2, hi);
 } else {
  u16 hi = (u16)(value >> 32);
  u32 lo = (u32)value;

  b53_mmap_write32(dev, page, reg, lo);
  b53_mmap_write16(dev, page, reg + 4, hi);
 }

 return 0;
}
