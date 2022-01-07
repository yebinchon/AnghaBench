
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;


 int NRESTART ;
 int RTL_PORT_REG (int,int ) ;
 int RXEN ;
 int TXEN ;
 int rtl_set (struct switch_dev*,int ,int) ;

__attribute__((used)) static void
rtl_port_set_enable(struct switch_dev *dev, int port, int enabled)
{
 rtl_set(dev, RTL_PORT_REG(port, RXEN), enabled);
 rtl_set(dev, RTL_PORT_REG(port, TXEN), enabled);

 if ((port >= 5) || !enabled)
  return;


 rtl_set(dev, RTL_PORT_REG(port, NRESTART), 1);
}
