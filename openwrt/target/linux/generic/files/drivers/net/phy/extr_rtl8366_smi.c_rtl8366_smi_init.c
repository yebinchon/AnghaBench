
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtl8366_smi {int parent; TYPE_2__* ops; TYPE_1__* ext_mbus; int gpio_sck; int gpio_sda; } ;
struct TYPE_4__ {int (* detect ) (struct rtl8366_smi*) ;int (* setup ) (struct rtl8366_smi*) ;} ;
struct TYPE_3__ {int name; } ;


 int EINVAL ;
 int __rtl8366_smi_cleanup (struct rtl8366_smi*) ;
 int __rtl8366_smi_init (struct rtl8366_smi*,int ) ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,int ,...) ;
 int dev_name (int ) ;
 int rtl8366_debugfs_init (struct rtl8366_smi*) ;
 int rtl8366_enable_all_ports (struct rtl8366_smi*,int) ;
 int rtl8366_init_vlan (struct rtl8366_smi*) ;
 int rtl8366_reset (struct rtl8366_smi*) ;
 int rtl8366_smi_mii_init (struct rtl8366_smi*) ;
 int stub1 (struct rtl8366_smi*) ;
 int stub2 (struct rtl8366_smi*) ;

int rtl8366_smi_init(struct rtl8366_smi *smi)
{
 int err;

 if (!smi->ops)
  return -EINVAL;

 err = __rtl8366_smi_init(smi, dev_name(smi->parent));
 if (err)
  goto err_out;

 if (!smi->ext_mbus)
  dev_info(smi->parent, "using GPIO pins %u (SDA) and %u (SCK)\n",
    smi->gpio_sda, smi->gpio_sck);
 else
  dev_info(smi->parent, "using MDIO bus '%s'\n", smi->ext_mbus->name);

 err = smi->ops->detect(smi);
 if (err) {
  dev_err(smi->parent, "chip detection failed, err=%d\n", err);
  goto err_free_sck;
 }

 err = rtl8366_reset(smi);
 if (err)
  goto err_free_sck;

 err = smi->ops->setup(smi);
 if (err) {
  dev_err(smi->parent, "chip setup failed, err=%d\n", err);
  goto err_free_sck;
 }

 err = rtl8366_init_vlan(smi);
 if (err) {
  dev_err(smi->parent, "VLAN initialization failed, err=%d\n",
   err);
  goto err_free_sck;
 }

 err = rtl8366_enable_all_ports(smi, 1);
 if (err)
  goto err_free_sck;

 err = rtl8366_smi_mii_init(smi);
 if (err)
  goto err_free_sck;

 rtl8366_debugfs_init(smi);

 return 0;

 err_free_sck:
 __rtl8366_smi_cleanup(smi);
 err_out:
 return err;
}
