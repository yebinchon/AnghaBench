
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int sw_dev; } ;


 int unregister_switch (int *) ;

__attribute__((used)) static void rtl8367_switch_cleanup(struct rtl8366_smi *smi)
{
 unregister_switch(&smi->sw_dev);
}
