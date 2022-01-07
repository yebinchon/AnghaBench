
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar8xxx_priv {int dummy; } ;


 int AR8216_VTU_OP_LOAD ;
 int AR8216_VTU_VID_S ;
 int ar8216_vtu_op (struct ar8xxx_priv*,int,int) ;

__attribute__((used)) static void
ar8216_vtu_load_vlan(struct ar8xxx_priv *priv, u32 vid, u32 port_mask)
{
 u32 op;

 op = AR8216_VTU_OP_LOAD | (vid << AR8216_VTU_VID_S);
 ar8216_vtu_op(priv, op, port_mask);
}
