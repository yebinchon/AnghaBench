
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_its {int dummy; } ;


 int vgic_its_restore_collection_table (struct vgic_its*) ;
 int vgic_its_restore_device_tables (struct vgic_its*) ;

__attribute__((used)) static int vgic_its_restore_tables_v0(struct vgic_its *its)
{
 int ret;

 ret = vgic_its_restore_collection_table(its);
 if (ret)
  return ret;

 return vgic_its_restore_device_tables(its);
}
