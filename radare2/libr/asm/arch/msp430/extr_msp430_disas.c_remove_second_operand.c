
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp430_cmd {int operands; } ;


 char* strchr (int ,char) ;

__attribute__((used)) static void remove_second_operand(struct msp430_cmd *cmd)
{
 if (strchr (cmd->operands, ',')) {
  {
   *strchr (cmd->operands, ',') = '\0';
  }
 }
}
