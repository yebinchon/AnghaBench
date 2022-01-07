
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ i_value; } ;
struct TYPE_5__ {TYPE_1__* assembler; } ;
struct TYPE_4__ {int immdisp; } ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RConfigNode ;



__attribute__((used)) static bool cb_asm_armimm(void *user, void *data) {
 RCore *core = (RCore *) user;
 RConfigNode *node = (RConfigNode *) data;
 core->assembler->immdisp = node->i_value ? 1 : 0;
 return 1;
}
