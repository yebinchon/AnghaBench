
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HIB3P3_BASE ;
 scalar_t__ HIB3P3_O_MEM_HIB_REQ ;
 int MAP_PRCMHIBRegWrite (scalar_t__,int) ;

void PRCMHibernateEnter(void)
{




  MAP_PRCMHIBRegWrite((HIB3P3_BASE+HIB3P3_O_MEM_HIB_REQ),0x1);

  __asm("    nop\n"
        "    nop\n"
        "    nop\n"
        "    nop\n");
}
