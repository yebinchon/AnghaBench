
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int ports; } ;
struct ar8xxx_priv {int* mib_stats; scalar_t__ mib_type; TYPE_2__* chip; int mib_lock; TYPE_1__ dev; } ;
struct ar8xxx_mib_desc {scalar_t__ type; int size; scalar_t__ offset; } ;
struct TYPE_4__ {int reg_port_stats_start; int reg_port_stats_length; int num_mibs; struct ar8xxx_mib_desc* mib_decs; } ;


 int WARN_ON (int) ;
 int ar8xxx_read (struct ar8xxx_priv*,scalar_t__) ;
 int cond_resched () ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void
ar8xxx_mib_fetch_port_stat(struct ar8xxx_priv *priv, int port, bool flush)
{
 unsigned int base;
 u64 *mib_stats;
 int i;

 WARN_ON(port >= priv->dev.ports);

 lockdep_assert_held(&priv->mib_lock);

 base = priv->chip->reg_port_stats_start +
        priv->chip->reg_port_stats_length * port;

 mib_stats = &priv->mib_stats[port * priv->chip->num_mibs];
 for (i = 0; i < priv->chip->num_mibs; i++) {
  const struct ar8xxx_mib_desc *mib;
  u64 t;

  mib = &priv->chip->mib_decs[i];
  if (mib->type > priv->mib_type)
   continue;
  t = ar8xxx_read(priv, base + mib->offset);
  if (mib->size == 2) {
   u64 hi;

   hi = ar8xxx_read(priv, base + mib->offset + 4);
   t |= hi << 32;
  }

  if (flush)
   mib_stats[i] = 0;
  else
   mib_stats[i] += t;
  cond_resched();
 }
}
