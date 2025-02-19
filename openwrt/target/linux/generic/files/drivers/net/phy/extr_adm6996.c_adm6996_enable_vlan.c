
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct adm6996_priv {int dummy; } ;


 int ADM_IFNTE ;
 int ADM_IFNTE_MASK ;
 int ADM_NTTE ;
 int ADM_OTBE_MASK ;
 int ADM_OTBE_P2_PVID ;
 int ADM_RVID1 ;
 int ADM_SYSC0 ;
 int ADM_SYSC3 ;
 int ADM_TBV ;
 int ADM_VID_CHECK ;
 int ADM_VID_CHECK_MASK ;
 int r16 (struct adm6996_priv*,int ) ;
 int w16 (struct adm6996_priv*,int ,int ) ;

__attribute__((used)) static void
adm6996_enable_vlan(struct adm6996_priv *priv)
{
 u16 reg;

 reg = r16(priv, ADM_OTBE_P2_PVID);
 reg &= ~(ADM_OTBE_MASK);
 w16(priv, ADM_OTBE_P2_PVID, reg);
 reg = r16(priv, ADM_IFNTE);
 reg &= ~(ADM_IFNTE_MASK);
 w16(priv, ADM_IFNTE, reg);
 reg = r16(priv, ADM_VID_CHECK);
 reg |= ADM_VID_CHECK_MASK;
 w16(priv, ADM_VID_CHECK, reg);
 reg = r16(priv, ADM_SYSC0);
 reg |= ADM_NTTE;
 reg &= ~(ADM_RVID1);
 w16(priv, ADM_SYSC0, reg);
 reg = r16(priv, ADM_SYSC3);
 reg |= ADM_TBV;
 w16(priv, ADM_SYSC3, reg);
}
