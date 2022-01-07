
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsw_mt753x {int list; scalar_t__ id; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;
 int mt753x_devs ;
 int mt753x_devs_lock ;
 int mt753x_id ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mt753x_add_gsw(struct gsw_mt753x *gsw)
{
 mutex_lock(&mt753x_devs_lock);
 gsw->id = mt753x_id++;
 INIT_LIST_HEAD(&gsw->list);
 list_add_tail(&gsw->list, &mt753x_devs);
 mutex_unlock(&mt753x_devs_lock);
}
