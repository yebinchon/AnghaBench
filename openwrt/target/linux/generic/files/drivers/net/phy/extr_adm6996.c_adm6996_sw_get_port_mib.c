
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {char* s; } ;
struct switch_val {int port_vlan; int len; TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct adm6996_priv {char* buf; int mib_lock; } ;
struct TYPE_5__ {char* name; scalar_t__ offset; } ;


 int ADM_NUM_PORTS ;
 scalar_t__ ADM_OFFSET_PORT (int) ;
 int ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 TYPE_2__* adm6996_mibs ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int r16 (struct adm6996_priv*,scalar_t__) ;
 scalar_t__ snprintf (char*,int,char*,...) ;
 struct adm6996_priv* to_adm (struct switch_dev*) ;

__attribute__((used)) static int
adm6996_sw_get_port_mib(struct switch_dev *dev,
         const struct switch_attr *attr,
         struct switch_val *val)
{
 struct adm6996_priv *priv = to_adm(dev);
 int port;
 char *buf = priv->buf;
 int i, len = 0;
 u32 reg = 0;

 port = val->port_vlan;
 if (port >= ADM_NUM_PORTS)
  return -EINVAL;

 mutex_lock(&priv->mib_lock);

 len += snprintf(buf + len, sizeof(priv->buf) - len,
   "Port %d MIB counters\n",
   port);

 for (i = 0; i < ARRAY_SIZE(adm6996_mibs); i++) {
  reg = r16(priv, adm6996_mibs[i].offset + ADM_OFFSET_PORT(port));
  reg += r16(priv, adm6996_mibs[i].offset + ADM_OFFSET_PORT(port) + 1) << 16;
  len += snprintf(buf + len, sizeof(priv->buf) - len,
    "%-12s: %u\n",
    adm6996_mibs[i].name,
    reg);
 }

 mutex_unlock(&priv->mib_lock);

 val->value.s = buf;
 val->len = len;

 return 0;
}
