
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct b53_io_ops {int dummy; } ;
struct b53_device {int reg_mutex; void* priv; struct b53_io_ops* ops; struct device* dev; } ;


 int GFP_KERNEL ;
 struct b53_device* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;

struct b53_device *b53_switch_alloc(struct device *base, struct b53_io_ops *ops,
        void *priv)
{
 struct b53_device *dev;

 dev = devm_kzalloc(base, sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 dev->dev = base;
 dev->ops = ops;
 dev->priv = priv;
 mutex_init(&dev->reg_mutex);

 return dev;
}
