
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct switch_dev {int dummy; } ;
struct rtl_reg {int bits; unsigned int shift; int reg; int phy; int page; scalar_t__ inverted; } ;
typedef enum rtl_regidx { ____Placeholder_rtl_regidx } rtl_regidx ;


 int ARRAY_SIZE (struct rtl_reg*) ;
 int BUG_ON (int) ;
 struct rtl_reg* rtl_regs ;
 int rtl_rmw (struct switch_dev*,int ,int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int
rtl_set(struct switch_dev *dev, enum rtl_regidx s, unsigned int val)
{
 const struct rtl_reg *r = &rtl_regs[s];
 u16 mask = 0xffff;

 BUG_ON(s >= ARRAY_SIZE(rtl_regs));

 if (r->bits == 0)
  return 0;

 if (r->shift > 0)
  val <<= r->shift;

 if (r->inverted)
  val = ~val;

 if (r->bits != 16) {
  mask = (1 << r->bits) - 1;
  mask <<= r->shift;
 }
 val &= mask;
 return rtl_rmw(dev, r->page, r->phy, r->reg, mask, val);
}
