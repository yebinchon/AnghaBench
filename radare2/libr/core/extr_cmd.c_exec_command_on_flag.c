
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct exec_command_t {int cmd; int core; } ;
struct TYPE_3__ {int offset; int size; } ;
typedef TYPE_1__ RFlagItem ;


 int r_core_block_size (int ,int ) ;
 int r_core_cmd0 (int ,int ) ;
 int r_core_seek (int ,int ,int) ;

__attribute__((used)) static bool exec_command_on_flag(RFlagItem *flg, void *u) {
 struct exec_command_t *user = (struct exec_command_t *)u;
 r_core_block_size (user->core, flg->size);
 r_core_seek (user->core, flg->offset, 1);
 r_core_cmd0 (user->core, user->cmd);
 return 1;
}
