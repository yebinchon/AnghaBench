
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {int dummy; } ;


 int __ar7240sw_reg_write (struct mii_bus*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg_mutex ;

__attribute__((used)) static void ar7240sw_reg_write(struct mii_bus *mii, u32 reg_addr, u32 reg_val)
{
 mutex_lock(&reg_mutex);
 __ar7240sw_reg_write(mii, reg_addr, reg_val);
 mutex_unlock(&reg_mutex);
}
