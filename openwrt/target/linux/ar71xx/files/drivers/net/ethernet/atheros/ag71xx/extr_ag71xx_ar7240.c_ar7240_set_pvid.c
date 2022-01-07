
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int vlans; } ;
struct ar7240sw {int* pvid; } ;


 int EINVAL ;
 struct ar7240sw* sw_to_ar7240 (struct switch_dev*) ;

__attribute__((used)) static int
ar7240_set_pvid(struct switch_dev *dev, int port, int vlan)
{
 struct ar7240sw *as = sw_to_ar7240(dev);



 if (vlan >= dev->vlans)
  return -EINVAL;

 as->pvid[port] = vlan;
 return 0;
}
