
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8367_initval {int val; int reg; } ;
struct rtl8366_smi {int dummy; } ;


 int REG_WR (struct rtl8366_smi*,int ,int ) ;

__attribute__((used)) static int rtl8367_write_initvals(struct rtl8366_smi *smi,
      const struct rtl8367_initval *initvals,
      int count)
{
 int err;
 int i;

 for (i = 0; i < count; i++)
  REG_WR(smi, initvals[i].reg, initvals[i].val);

 return 0;
}
