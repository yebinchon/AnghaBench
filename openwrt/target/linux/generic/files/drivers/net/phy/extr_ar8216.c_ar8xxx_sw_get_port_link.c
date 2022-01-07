
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_port_link {int dummy; } ;
struct switch_dev {int dummy; } ;
struct ar8xxx_priv {int dummy; } ;


 int ar8216_read_port_link (struct ar8xxx_priv*,int,struct switch_port_link*) ;
 struct ar8xxx_priv* swdev_to_ar8xxx (struct switch_dev*) ;

int
ar8xxx_sw_get_port_link(struct switch_dev *dev, int port,
   struct switch_port_link *link)
{
 struct ar8xxx_priv *priv = swdev_to_ar8xxx(dev);

 ar8216_read_port_link(priv, port, link);
 return 0;
}
