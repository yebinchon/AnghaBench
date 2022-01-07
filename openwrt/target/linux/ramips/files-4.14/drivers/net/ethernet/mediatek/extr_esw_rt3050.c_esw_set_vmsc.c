
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt305x_esw {int dummy; } ;


 int RT305X_ESW_REG_VMSC (unsigned int) ;
 unsigned int RT305X_ESW_VMSC_MSC_M ;
 unsigned int RT305X_ESW_VMSC_MSC_S ;
 int esw_rmw (struct rt305x_esw*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void esw_set_vmsc(struct rt305x_esw *esw, unsigned vlan, unsigned msc)
{
 unsigned s;

 s = RT305X_ESW_VMSC_MSC_S * (vlan % 4);
 esw_rmw(esw,
         RT305X_ESW_REG_VMSC(vlan / 4),
         RT305X_ESW_VMSC_MSC_M << s,
         (msc & RT305X_ESW_VMSC_MSC_M) << s);
}
