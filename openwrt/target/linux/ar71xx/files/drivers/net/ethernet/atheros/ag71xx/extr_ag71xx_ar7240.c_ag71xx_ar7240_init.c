
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar7240sw {int stats_lock; } ;
struct ag71xx {int link_work; struct ar7240sw* phy_priv; } ;


 int ENODEV ;
 int INIT_DELAYED_WORK (int *,int ) ;
 struct ar7240sw* ar7240_probe (struct ag71xx*) ;
 int ar7240sw_reset (struct ar7240sw*) ;
 int link_function ;
 int rwlock_init (int *) ;

int ag71xx_ar7240_init(struct ag71xx *ag)
{
 struct ar7240sw *as;

 as = ar7240_probe(ag);
 if (!as)
  return -ENODEV;

 ag->phy_priv = as;
 ar7240sw_reset(as);

 rwlock_init(&as->stats_lock);
 INIT_DELAYED_WORK(&ag->link_work, link_function);

 return 0;
}
