
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct b53_device {int reg_mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write64 ) (struct b53_device*,int ,int ,int ) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct b53_device*,int ,int ,int ) ;

__attribute__((used)) static inline int b53_write64(struct b53_device *dev, u8 page, u8 reg,
          u64 value)
{
 int ret;

 mutex_lock(&dev->reg_mutex);
 ret = dev->ops->write64(dev, page, reg, value);
 mutex_unlock(&dev->reg_mutex);

 return ret;
}
