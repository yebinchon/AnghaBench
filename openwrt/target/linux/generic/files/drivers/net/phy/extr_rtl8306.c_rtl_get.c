
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct switch_dev {int dummy; } ;
struct rtl_reg {int bits; int shift; scalar_t__ inverted; int reg; int phy; int page; } ;
typedef enum rtl_regidx { ____Placeholder_rtl_regidx } rtl_regidx ;


 int ARRAY_SIZE (struct rtl_reg*) ;
 int BUG_ON (int) ;
 int rtl_r16 (struct switch_dev*,int ,int ,int ) ;
 struct rtl_reg* rtl_regs ;

__attribute__((used)) static inline int
rtl_get(struct switch_dev *dev, enum rtl_regidx s)
{
 const struct rtl_reg *r = &rtl_regs[s];
 u16 val;

 BUG_ON(s >= ARRAY_SIZE(rtl_regs));
 if (r->bits == 0)
  return 0;

 val = rtl_r16(dev, r->page, r->phy, r->reg);

 if (r->shift > 0)
  val >>= r->shift;

 if (r->inverted)
  val = ~val;

 val &= (1 << r->bits) - 1;

 return val;
}
