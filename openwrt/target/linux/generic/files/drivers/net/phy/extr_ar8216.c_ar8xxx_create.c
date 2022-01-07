
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {int mib_work; int mib_lock; int reg_mutex; } ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int ar8xxx_mib_work_func ;
 struct ar8xxx_priv* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct ar8xxx_priv *
ar8xxx_create(void)
{
 struct ar8xxx_priv *priv;

 priv = kzalloc(sizeof(struct ar8xxx_priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return ((void*)0);

 mutex_init(&priv->reg_mutex);
 mutex_init(&priv->mib_lock);
 INIT_DELAYED_WORK(&priv->mib_work, ar8xxx_mib_work_func);

 return priv;
}
