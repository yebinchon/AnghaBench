
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt305x_esw {int dummy; } ;


 unsigned int RT305X_ESW_POC0_DIS_PORT_M ;
 unsigned int RT305X_ESW_POC0_DIS_PORT_S ;
 int RT305X_ESW_REG_POC0 ;
 unsigned int esw_r32 (struct rt305x_esw*,int ) ;

__attribute__((used)) static unsigned esw_get_port_disable(struct rt305x_esw *esw)
{
 unsigned reg;

 reg = esw_r32(esw, RT305X_ESW_REG_POC0);
 return (reg >> RT305X_ESW_POC0_DIS_PORT_S) &
        RT305X_ESW_POC0_DIS_PORT_M;
}
