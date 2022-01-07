
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int clk_delay; int cmd_read; int cmd_write; int num_mib_counters; int mib_counters; int num_vlan_mc; int num_ports; int cpu_port; int * ops; } ;
struct platform_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IS_ERR (struct rtl8366_smi*) ;
 int PTR_ERR (struct rtl8366_smi*) ;
 int RTL8367_CPU_PORT_NUM ;
 int RTL8367_NUM_PORTS ;
 int RTL8367_NUM_VLANS ;
 int kfree (struct rtl8366_smi*) ;
 int platform_set_drvdata (struct platform_device*,struct rtl8366_smi*) ;
 int rtl8366_smi_cleanup (struct rtl8366_smi*) ;
 int rtl8366_smi_init (struct rtl8366_smi*) ;
 struct rtl8366_smi* rtl8366_smi_probe (struct platform_device*) ;
 int rtl8367_mib_counters ;
 int rtl8367_smi_ops ;
 int rtl8367_switch_init (struct rtl8366_smi*) ;

__attribute__((used)) static int rtl8367_probe(struct platform_device *pdev)
{
 struct rtl8366_smi *smi;
 int err;

 smi = rtl8366_smi_probe(pdev);
 if (IS_ERR(smi))
  return PTR_ERR(smi);

 smi->clk_delay = 1500;
 smi->cmd_read = 0xb9;
 smi->cmd_write = 0xb8;
 smi->ops = &rtl8367_smi_ops;
 smi->cpu_port = RTL8367_CPU_PORT_NUM;
 smi->num_ports = RTL8367_NUM_PORTS;
 smi->num_vlan_mc = RTL8367_NUM_VLANS;
 smi->mib_counters = rtl8367_mib_counters;
 smi->num_mib_counters = ARRAY_SIZE(rtl8367_mib_counters);

 err = rtl8366_smi_init(smi);
 if (err)
  goto err_free_smi;

 platform_set_drvdata(pdev, smi);

 err = rtl8367_switch_init(smi);
 if (err)
  goto err_clear_drvdata;

 return 0;

 err_clear_drvdata:
 platform_set_drvdata(pdev, ((void*)0));
 rtl8366_smi_cleanup(smi);
 err_free_smi:
 kfree(smi);
 return err;
}
