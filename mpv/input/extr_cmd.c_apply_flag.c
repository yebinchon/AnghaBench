
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_cmd {int flags; } ;
typedef int bstr ;
struct TYPE_2__ {int remove; int add; scalar_t__ name; } ;


 scalar_t__ bstr_equals0 (int ,scalar_t__) ;
 TYPE_1__* cmd_flags ;

__attribute__((used)) static bool apply_flag(struct mp_cmd *cmd, bstr str)
{
    for (int n = 0; cmd_flags[n].name; n++) {
        if (bstr_equals0(str, cmd_flags[n].name)) {
            cmd->flags = (cmd->flags & ~cmd_flags[n].remove) | cmd_flags[n].add;
            return 1;
        }
    }
    return 0;
}
