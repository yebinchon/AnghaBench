
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sata_oxnas_host_priv {scalar_t__ port_frozen; scalar_t__ port_in_eh; } ;
struct ata_host {struct sata_oxnas_host_priv* private_data; } ;


 int smp_rmb () ;

__attribute__((used)) static inline int sata_oxnas_is_host_frozen(struct ata_host *ah)
{
 struct sata_oxnas_host_priv *hd = ah->private_data;

 smp_rmb();
 return hd->port_in_eh || hd->port_frozen;
}
