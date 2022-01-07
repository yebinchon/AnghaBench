
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;
struct adm6996_priv {int reg_mutex; } ;


 int adm6996_perform_reset (struct adm6996_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_devel (char*) ;
 struct adm6996_priv* to_adm (struct switch_dev*) ;

__attribute__((used)) static int
adm6996_reset_switch(struct switch_dev *dev)
{
 struct adm6996_priv *priv = to_adm(dev);

 pr_devel("reset\n");

 mutex_lock(&priv->reg_mutex);
 adm6996_perform_reset (priv);
 mutex_unlock(&priv->reg_mutex);
 return 0;
}
