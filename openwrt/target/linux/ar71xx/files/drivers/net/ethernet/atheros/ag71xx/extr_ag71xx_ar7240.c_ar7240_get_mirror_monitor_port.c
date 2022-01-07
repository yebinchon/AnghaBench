
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct mii_bus {int dummy; } ;
struct ar7240sw {struct mii_bus* mii_bus; } ;


 int AR7240_MIRROR_PORT_M ;
 int AR7240_MIRROR_PORT_S ;
 int AR7240_REG_CPU_PORT ;
 int ar7240sw_reg_read (struct mii_bus*,int ) ;
 struct ar7240sw* sw_to_ar7240 (struct switch_dev*) ;

__attribute__((used)) static int
ar7240_get_mirror_monitor_port(struct switch_dev *dev,
    const struct switch_attr *attr,
    struct switch_val *val)
{
 struct ar7240sw *as = sw_to_ar7240(dev);
 struct mii_bus *mii = as->mii_bus;

 u32 ret;

 ret = ar7240sw_reg_read(mii, AR7240_REG_CPU_PORT);
 val->value.i = (ret >> AR7240_MIRROR_PORT_S) & AR7240_MIRROR_PORT_M;

 return 0;
}
