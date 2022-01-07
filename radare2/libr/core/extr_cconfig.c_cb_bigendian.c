
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int i_value; } ;
struct TYPE_9__ {TYPE_3__* print; TYPE_2__* dbg; int anal; int assembler; } ;
struct TYPE_8__ {int big_endian; } ;
struct TYPE_7__ {TYPE_1__* bp; } ;
struct TYPE_6__ {int endian; } ;
typedef TYPE_4__ RCore ;
typedef TYPE_5__ RConfigNode ;


 int r_anal_set_big_endian (int ,int) ;
 int r_asm_set_big_endian (int ,int ) ;

__attribute__((used)) static bool cb_bigendian(void *user, void *data) {
 RCore *core = (RCore *) user;
 RConfigNode *node = (RConfigNode *) data;

 bool isbig = r_asm_set_big_endian (core->assembler, node->i_value);

 r_anal_set_big_endian (core->anal, isbig);

 if (core->dbg && core->dbg->bp) {
  core->dbg->bp->endian = isbig;
 }

 core->print->big_endian = node->i_value;
 return 1;
}
