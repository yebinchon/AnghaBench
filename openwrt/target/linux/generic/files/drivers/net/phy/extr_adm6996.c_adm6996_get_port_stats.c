
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct switch_port_stats {int tx_bytes; int rx_bytes; } ;
struct switch_dev {int dummy; } ;
struct adm6996_priv {int mib_lock; } ;
struct TYPE_2__ {scalar_t__ offset; } ;


 int ADM6996_MIB_RXB_ID ;
 int ADM6996_MIB_TXB_ID ;
 int ADM_NUM_PORTS ;
 scalar_t__ ADM_OFFSET_PORT (int) ;
 int EINVAL ;
 TYPE_1__* adm6996_mibs ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int r16 (struct adm6996_priv*,scalar_t__) ;
 struct adm6996_priv* to_adm (struct switch_dev*) ;

__attribute__((used)) static int
adm6996_get_port_stats(struct switch_dev *dev, int port,
   struct switch_port_stats *stats)
{
 struct adm6996_priv *priv = to_adm(dev);
 int id;
 u32 reg = 0;

 if (port >= ADM_NUM_PORTS)
  return -EINVAL;

 mutex_lock(&priv->mib_lock);

 id = ADM6996_MIB_TXB_ID;
 reg = r16(priv, adm6996_mibs[id].offset + ADM_OFFSET_PORT(port));
 reg += r16(priv, adm6996_mibs[id].offset + ADM_OFFSET_PORT(port) + 1) << 16;
 stats->tx_bytes = reg;

 id = ADM6996_MIB_RXB_ID;
 reg = r16(priv, adm6996_mibs[id].offset + ADM_OFFSET_PORT(port));
 reg += r16(priv, adm6996_mibs[id].offset + ADM_OFFSET_PORT(port) + 1) << 16;
 stats->rx_bytes = reg;

 mutex_unlock(&priv->mib_lock);

 return 0;
}
