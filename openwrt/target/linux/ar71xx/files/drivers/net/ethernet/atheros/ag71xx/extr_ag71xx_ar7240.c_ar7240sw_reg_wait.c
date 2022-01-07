
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {int dummy; } ;


 int __ar7240sw_reg_wait (struct mii_bus*,int ,int ,int ,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg_mutex ;

__attribute__((used)) static int ar7240sw_reg_wait(struct mii_bus *mii, u32 reg, u32 mask, u32 val,
        unsigned timeout)
{
 int ret;

 mutex_lock(&reg_mutex);
 ret = __ar7240sw_reg_wait(mii, reg, mask, val, timeout);
 mutex_unlock(&reg_mutex);
 return ret;
}
