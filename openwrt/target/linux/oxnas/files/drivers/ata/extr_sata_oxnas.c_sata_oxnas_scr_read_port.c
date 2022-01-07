
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_port {int dummy; } ;


 int sata_oxnas_link_read (struct ata_port*,int) ;

__attribute__((used)) static int sata_oxnas_scr_read_port(struct ata_port *ap, unsigned int sc_reg,
     u32 *val)
{
 *val = sata_oxnas_link_read(ap, 0x20 + (sc_reg*4));
 return 0;
}
