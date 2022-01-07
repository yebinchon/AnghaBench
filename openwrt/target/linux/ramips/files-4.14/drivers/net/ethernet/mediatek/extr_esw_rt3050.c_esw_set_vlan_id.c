
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt305x_esw {int dummy; } ;


 int RT305X_ESW_REG_VLANI (unsigned int) ;
 unsigned int RT305X_ESW_VLANI_VID_M ;
 unsigned int RT305X_ESW_VLANI_VID_S ;
 int esw_rmw (struct rt305x_esw*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void esw_set_vlan_id(struct rt305x_esw *esw, unsigned vlan, unsigned vid)
{
 unsigned s;

 s = RT305X_ESW_VLANI_VID_S * (vlan % 2);
 esw_rmw(esw,
         RT305X_ESW_REG_VLANI(vlan / 2),
         RT305X_ESW_VLANI_VID_M << s,
         (vid & RT305X_ESW_VLANI_VID_M) << s);
}
