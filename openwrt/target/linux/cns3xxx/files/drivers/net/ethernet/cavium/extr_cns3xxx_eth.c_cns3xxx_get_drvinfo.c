
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int driver; } ;


 char* DRV_NAME ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void cns3xxx_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *info)
{
 strcpy(info->driver, DRV_NAME);
 strcpy(info->bus_info, "internal");
}
