
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {int num_ports; int cpu_port; } ;


 int rtl8366_enable_vlan (struct rtl8366_smi*,int) ;
 int rtl8366_reset_vlan (struct rtl8366_smi*) ;
 int rtl8366_set_pvid (struct rtl8366_smi*,int,int) ;
 int rtl8366_set_vlan (struct rtl8366_smi*,int,int,int,int ) ;

__attribute__((used)) static int rtl8366_init_vlan(struct rtl8366_smi *smi)
{
 int port;
 int err;

 err = rtl8366_reset_vlan(smi);
 if (err)
  return err;

 for (port = 0; port < smi->num_ports; port++) {
  u32 mask;

  if (port == smi->cpu_port)
   mask = (1 << smi->num_ports) - 1;
  else
   mask = (1 << port) | (1 << smi->cpu_port);

  err = rtl8366_set_vlan(smi, (port + 1), mask, mask, 0);
  if (err)
   return err;

  err = rtl8366_set_pvid(smi, port, (port + 1));
  if (err)
   return err;
 }

 return rtl8366_enable_vlan(smi, 1);
}
