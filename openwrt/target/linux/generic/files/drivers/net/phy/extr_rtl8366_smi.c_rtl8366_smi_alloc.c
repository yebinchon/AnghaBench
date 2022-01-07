
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {struct device* parent; } ;
struct device {int dummy; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 struct rtl8366_smi* kzalloc (int,int ) ;

struct rtl8366_smi *rtl8366_smi_alloc(struct device *parent)
{
 struct rtl8366_smi *smi;

 BUG_ON(!parent);

 smi = kzalloc(sizeof(*smi), GFP_KERNEL);
 if (!smi) {
  dev_err(parent, "no memory for private data\n");
  return ((void*)0);
 }

 smi->parent = parent;
 return smi;
}
