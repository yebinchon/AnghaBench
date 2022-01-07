
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {struct switch_dev* alias; struct switch_dev* name; int vlan_ops; int port_ops; int ops; } ;


 int free (struct switch_dev*) ;
 scalar_t__ refcount ;
 int swlib_free_attributes (int *) ;
 int swlib_free_port_map (struct switch_dev*) ;
 int swlib_priv_free () ;

void
swlib_free(struct switch_dev *dev)
{
 swlib_free_attributes(&dev->ops);
 swlib_free_attributes(&dev->port_ops);
 swlib_free_attributes(&dev->vlan_ops);
 swlib_free_port_map(dev);
 free(dev->name);
 free(dev->alias);
 free(dev);

 if (--refcount == 0)
  swlib_priv_free();
}
