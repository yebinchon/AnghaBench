
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8xxx_priv {int dummy; } ;


 int ETIMEDOUT ;
 int ar8xxx_read (struct ar8xxx_priv*,int) ;
 int cond_resched () ;
 int pr_err (char*,unsigned int,int,int,int) ;
 int udelay (int) ;

int
ar8216_wait_bit(struct ar8xxx_priv *priv, int reg, u32 mask, u32 val)
{
 int timeout = 20;
 u32 t = 0;

 while (1) {
  t = ar8xxx_read(priv, reg);
  if ((t & mask) == val)
   return 0;

  if (timeout-- <= 0)
   break;

  udelay(10);
  cond_resched();
 }

 pr_err("ar8216: timeout on reg %08x: %08x & %08x != %08x\n",
        (unsigned int) reg, t, mask, val);
 return -ETIMEDOUT;
}
