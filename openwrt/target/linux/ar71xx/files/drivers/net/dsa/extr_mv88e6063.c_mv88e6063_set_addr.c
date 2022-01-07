
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dsa_switch {int dummy; } ;


 int REG_GLOBAL ;
 int REG_WRITE (int ,int,int) ;

__attribute__((used)) static int mv88e6063_set_addr(struct dsa_switch *ds, u8 *addr)
{
 REG_WRITE(REG_GLOBAL, 0x01, (addr[0] << 8) | addr[1]);
 REG_WRITE(REG_GLOBAL, 0x02, (addr[2] << 8) | addr[3]);
 REG_WRITE(REG_GLOBAL, 0x03, (addr[4] << 8) | addr[5]);

 return 0;
}
