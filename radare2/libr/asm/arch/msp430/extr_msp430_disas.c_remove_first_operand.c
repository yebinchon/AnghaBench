
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp430_cmd {int operands; } ;


 int memmove (int ,scalar_t__,scalar_t__) ;
 scalar_t__ strchr (int ,char) ;
 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static void remove_first_operand(struct msp430_cmd *cmd)
{
 if (strchr(cmd->operands, ',')) {
  memmove(cmd->operands, strchr(cmd->operands, ',') + 2,
    strlen(strchr(cmd->operands, ',') + 2) + 1);
 }
}
