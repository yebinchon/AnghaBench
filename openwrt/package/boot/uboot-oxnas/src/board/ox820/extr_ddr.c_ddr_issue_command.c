
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 scalar_t__ C_DDR_CMD_REG ;
 int ddr_poll_until_not_busy () ;

__attribute__((used)) static void ddr_issue_command(int commmand)
{
 *(volatile UINT *) C_DDR_CMD_REG = commmand;
 ddr_poll_until_not_busy();
}
