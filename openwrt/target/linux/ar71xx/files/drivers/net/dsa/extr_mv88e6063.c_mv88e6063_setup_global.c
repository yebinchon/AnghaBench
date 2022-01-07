
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;


 int REG_GLOBAL ;
 int REG_WRITE (int ,int,int) ;

__attribute__((used)) static int mv88e6063_setup_global(struct dsa_switch *ds)
{





 REG_WRITE(REG_GLOBAL, 0x04, 0x0800);






 REG_WRITE(REG_GLOBAL, 0x0a, 0x2130);

 return 0;
}
