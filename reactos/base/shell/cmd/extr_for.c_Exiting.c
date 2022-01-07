
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Context; } ;
struct TYPE_5__ {TYPE_1__ For; } ;
typedef TYPE_2__ PARSED_COMMAND ;
typedef int BOOL ;


 scalar_t__ bCtrlBreak ;
 scalar_t__ fc ;

__attribute__((used)) static BOOL Exiting(PARSED_COMMAND *Cmd)
{

    return bCtrlBreak || fc != Cmd->For.Context;
}
