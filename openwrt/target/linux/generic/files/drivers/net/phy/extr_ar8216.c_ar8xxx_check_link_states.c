
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int ports; } ;
struct ar8xxx_priv {int* link_up; int reg_mutex; TYPE_4__* phy; TYPE_2__* chip; TYPE_1__ dev; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_8__ {TYPE_3__ mdio; } ;
struct TYPE_6__ {int (* read_port_status ) (struct ar8xxx_priv*,int) ;int (* atu_flush_port ) (struct ar8xxx_priv*,int) ;} ;


 int AR8216_PORT_STATUS_LINK_UP ;
 int dev_info (int *,char*,int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ar8xxx_priv*,int) ;
 int stub2 (struct ar8xxx_priv*,int) ;

__attribute__((used)) static bool
ar8xxx_check_link_states(struct ar8xxx_priv *priv)
{
 bool link_new, changed = 0;
 u32 status;
 int i;

 mutex_lock(&priv->reg_mutex);

 for (i = 0; i < priv->dev.ports; i++) {
  status = priv->chip->read_port_status(priv, i);
  link_new = !!(status & AR8216_PORT_STATUS_LINK_UP);
  if (link_new == priv->link_up[i])
   continue;

  priv->link_up[i] = link_new;
  changed = 1;

  if (!link_new)
   priv->chip->atu_flush_port(priv, i);
  dev_info(&priv->phy->mdio.dev, "Port %d is %s\n",
    i, link_new ? "up" : "down");
 }

 mutex_unlock(&priv->reg_mutex);

 return changed;
}
