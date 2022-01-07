
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_port_link {int dummy; } ;
struct switch_dev {int dummy; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int MT753X_NUM_PHYS ;
 int switch_generic_set_link (struct switch_dev*,int,struct switch_port_link*) ;

__attribute__((used)) static int mt753x_set_port_link(struct switch_dev *dev, int port,
    struct switch_port_link *link)
{

 if (port >= MT753X_NUM_PHYS)
  return -EINVAL;

 return switch_generic_set_link(dev, port, link);



}
