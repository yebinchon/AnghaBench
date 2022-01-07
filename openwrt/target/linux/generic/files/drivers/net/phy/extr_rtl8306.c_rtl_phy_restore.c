
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;
struct rtl_phyregs {int duplex; int speed; int nway; } ;


 int DUPLEX ;
 int NWAY ;
 int RTL_PORT_REG (int,int ) ;
 int SPEED ;
 int rtl_set (struct switch_dev*,int ,int ) ;

__attribute__((used)) static void
rtl_phy_restore(struct switch_dev *dev, int port, struct rtl_phyregs *regs)
{
 rtl_set(dev, RTL_PORT_REG(port, NWAY), regs->nway);
 rtl_set(dev, RTL_PORT_REG(port, SPEED), regs->speed);
 rtl_set(dev, RTL_PORT_REG(port, DUPLEX), regs->duplex);
}
