
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366_smi {int dummy; } ;


 int REG_WR (struct rtl8366_smi*,int ,int ) ;
 int RTL8367_PORTS_ALL ;
 int RTL8367_PORT_ISOLATION_REG (int) ;

__attribute__((used)) static int rtl8367_enable_port(struct rtl8366_smi *smi, int port, int enable)
{
 int err;

 REG_WR(smi, RTL8367_PORT_ISOLATION_REG(port),
        (enable) ? RTL8367_PORTS_ALL : 0);

 return 0;
}
