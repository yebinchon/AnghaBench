
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_io_device {int dev; int nr_regions; int regions; } ;


 int ARRAY_SIZE (int ) ;
 unsigned int SZ_64K ;
 int kvm_io_gic_ops ;
 int kvm_iodevice_init (int *,int *) ;
 int vgic_v3_dist_registers ;

unsigned int vgic_v3_init_dist_iodev(struct vgic_io_device *dev)
{
 dev->regions = vgic_v3_dist_registers;
 dev->nr_regions = ARRAY_SIZE(vgic_v3_dist_registers);

 kvm_iodevice_init(&dev->dev, &kvm_io_gic_ops);

 return SZ_64K;
}
