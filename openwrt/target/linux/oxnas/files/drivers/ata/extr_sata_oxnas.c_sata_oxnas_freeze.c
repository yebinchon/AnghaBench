
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sata_oxnas_host_priv {int port_frozen; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct TYPE_2__ {struct sata_oxnas_host_priv* private_data; } ;


 int BIT (int ) ;
 int DPRINTK (char*) ;
 int smp_wmb () ;

__attribute__((used)) static void sata_oxnas_freeze(struct ata_port *ap)
{
 struct sata_oxnas_host_priv *hd = ap->host->private_data;

 DPRINTK("\n");
 hd->port_frozen |= BIT(ap->port_no);
 smp_wmb();
}
