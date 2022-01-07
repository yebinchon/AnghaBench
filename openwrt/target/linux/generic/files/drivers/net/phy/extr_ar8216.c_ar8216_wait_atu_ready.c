
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ar8xxx_priv {int dummy; } ;


 int AR8216_ATU_ACTIVE ;
 int ar8xxx_mii_read32 (struct ar8xxx_priv*,int ,int ) ;
 int cond_resched () ;
 int pr_err (char*) ;
 int udelay (int) ;

__attribute__((used)) static void
ar8216_wait_atu_ready(struct ar8xxx_priv *priv, u16 r2, u16 r1)
{
 int timeout = 20;

 while (ar8xxx_mii_read32(priv, r2, r1) & AR8216_ATU_ACTIVE && --timeout) {
  udelay(10);
  cond_resched();
 }

 if (!timeout)
  pr_err("ar8216: timeout waiting for atu to become ready\n");
}
