
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; } ;
struct sata_oxnas_host_priv {int core_lock; TYPE_1__ scsi_wait_queue; scalar_t__ scsi_nonblocking_attempts; } ;
struct ata_host {struct sata_oxnas_host_priv* private_data; } ;


 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int sata_core_has_scsi_waiters(struct ata_host *ah)
{
 int has_waiters;
 unsigned long flags;
 struct sata_oxnas_host_priv *hd = ah->private_data;

 spin_lock_irqsave(&hd->core_lock, flags);
 has_waiters = hd->scsi_nonblocking_attempts ||
        !list_empty(&hd->scsi_wait_queue.head);
 spin_unlock_irqrestore(&hd->core_lock, flags);

 return has_waiters;
}
