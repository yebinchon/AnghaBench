
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__* ar8xxx_phy_ids ;

__attribute__((used)) static bool
ar8xxx_phy_match(u32 phy_id)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ar8xxx_phy_ids); i++)
  if (phy_id == ar8xxx_phy_ids[i])
   return 1;

 return 0;
}
