
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
struct TYPE_3__ {TYPE_2__* device; } ;
struct ata_port {TYPE_1__ link; int port_no; int host; } ;
struct TYPE_4__ {scalar_t__ class; } ;


 scalar_t__ ATA_DEV_ATA ;
 size_t ATA_MAX_DEVICES ;
 scalar_t__ HZ ;
 int SCR_ACTIVE ;
 int SCR_ERROR ;
 int SERROR_IRQ_MASK ;
 int VPRINTK (char*) ;
 scalar_t__ jiffies ;
 int sata_oxnas_dev_config (TYPE_2__*) ;
 int sata_oxnas_irq_on (struct ata_port*) ;
 int sata_oxnas_link_write (struct ata_port*,int,int) ;
 int sata_oxnas_reset_ucode (int ,int,int ) ;
 int sata_oxnas_scr_write_port (struct ata_port*,int ,int) ;
 int sata_std_hardreset (TYPE_1__*,int *,scalar_t__) ;

__attribute__((used)) static void sata_oxnas_post_reset_init(struct ata_port *ap)
{
 uint dev;


 sata_oxnas_reset_ucode(ap->host, !ap->port_no, 0);


 sata_oxnas_link_write(ap, 0x0C, 0x30003);


 sata_oxnas_scr_write_port(ap, SCR_ERROR, ~0);
 sata_oxnas_scr_write_port(ap, SERROR_IRQ_MASK, 0x03feffff);
 sata_oxnas_scr_write_port(ap, SCR_ACTIVE, ~0 & ~(1 << 26) & ~(1 << 16));


 sata_oxnas_irq_on(ap);


 for (dev = 0; dev < ATA_MAX_DEVICES; ++dev) {
  if (ap->link.device[dev].class == ATA_DEV_ATA) {
   sata_std_hardreset(&ap->link, ((void*)0), jiffies + HZ);
   sata_oxnas_dev_config(&(ap->link.device[dev]));
  }
 }


 sata_oxnas_scr_write_port(ap, SCR_ERROR, ~0);
 VPRINTK("done\n");
}
