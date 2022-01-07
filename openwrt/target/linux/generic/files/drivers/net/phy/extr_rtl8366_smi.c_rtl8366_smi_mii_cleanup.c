
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int mii_bus; } ;


 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;

__attribute__((used)) static void rtl8366_smi_mii_cleanup(struct rtl8366_smi *smi)
{
 mdiobus_unregister(smi->mii_bus);
 mdiobus_free(smi->mii_bus);
}
