
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt305x_esw {int reg_rw_lock; } ;


 int esw_rmw_raw (struct rt305x_esw*,unsigned int,unsigned long,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void esw_rmw(struct rt305x_esw *esw, unsigned reg,
      unsigned long mask, unsigned long val)
{
 unsigned long flags;

 spin_lock_irqsave(&esw->reg_rw_lock, flags);
 esw_rmw_raw(esw, reg, mask, val);
 spin_unlock_irqrestore(&esw->reg_rw_lock, flags);
}
