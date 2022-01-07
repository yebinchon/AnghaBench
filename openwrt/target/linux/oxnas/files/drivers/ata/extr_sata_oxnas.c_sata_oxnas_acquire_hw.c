
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int port_no; int host; } ;


 scalar_t__ HW_LOCKER_UID ;
 int SATA_SCSI_STACK ;
 int __acquire_sata_core (int ,int ,int *,int ,int,int,int,void*,int ) ;

__attribute__((used)) static int sata_oxnas_acquire_hw(
 struct ata_port *ap,
 int may_sleep,
 int timeout_jiffies)
{
 return __acquire_sata_core(ap->host, ap->port_no, ((void*)0), 0, may_sleep,
       timeout_jiffies, 1, (void *)HW_LOCKER_UID,
       SATA_SCSI_STACK);
}
