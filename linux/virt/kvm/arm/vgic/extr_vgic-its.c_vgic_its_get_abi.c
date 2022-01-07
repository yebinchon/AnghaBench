
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgic_its_abi {int dummy; } ;
struct vgic_its {size_t abi_rev; } ;


 struct vgic_its_abi const* its_table_abi_versions ;

inline const struct vgic_its_abi *vgic_its_get_abi(struct vgic_its *its)
{
 return &its_table_abi_versions[its->abi_rev];
}
