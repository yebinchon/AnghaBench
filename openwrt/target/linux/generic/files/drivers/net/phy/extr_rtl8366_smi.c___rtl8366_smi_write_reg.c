
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {int cmd_write; int lock; } ;


 int rtl8366_smi_start (struct rtl8366_smi*) ;
 int rtl8366_smi_stop (struct rtl8366_smi*) ;
 int rtl8366_smi_write_byte (struct rtl8366_smi*,int) ;
 int rtl8366_smi_write_byte_noack (struct rtl8366_smi*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int __rtl8366_smi_write_reg(struct rtl8366_smi *smi,
       u32 addr, u32 data, bool ack)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&smi->lock, flags);

 rtl8366_smi_start(smi);


 ret = rtl8366_smi_write_byte(smi, smi->cmd_write);
 if (ret)
  goto out;


 ret = rtl8366_smi_write_byte(smi, addr & 0xff);
 if (ret)
  goto out;


 ret = rtl8366_smi_write_byte(smi, addr >> 8);
 if (ret)
  goto out;


 ret = rtl8366_smi_write_byte(smi, data & 0xff);
 if (ret)
  goto out;


 if (ack)
  ret = rtl8366_smi_write_byte(smi, data >> 8);
 else
  ret = rtl8366_smi_write_byte_noack(smi, data >> 8);
 if (ret)
  goto out;

 ret = 0;

 out:
 rtl8366_smi_stop(smi);
 spin_unlock_irqrestore(&smi->lock, flags);

 return ret;
}
