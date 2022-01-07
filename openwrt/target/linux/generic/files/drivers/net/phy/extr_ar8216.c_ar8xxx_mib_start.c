
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int mib_poll_interval; int mib_work; } ;


 int ar8xxx_has_mib_counters (struct ar8xxx_priv*) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void
ar8xxx_mib_start(struct ar8xxx_priv *priv)
{
 if (!ar8xxx_has_mib_counters(priv) || !priv->mib_poll_interval)
  return;

 schedule_delayed_work(&priv->mib_work,
         msecs_to_jiffies(priv->mib_poll_interval));
}
