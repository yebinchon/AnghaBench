
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int i_value; } ;
struct TYPE_7__ {TYPE_2__* anal; TYPE_1__* assembler; } ;
struct TYPE_6__ {int pcalign; } ;
struct TYPE_5__ {int pcalign; } ;
typedef TYPE_3__ RCore ;
typedef TYPE_4__ RConfigNode ;



__attribute__((used)) static bool cb_asm_pcalign(void *user, void *data) {
 RCore *core = (RCore *) user;
 RConfigNode *node = (RConfigNode *) data;
 int align = node->i_value;
 if (align < 0) {
  align = 0;
 }
 core->assembler->pcalign = align;
 core->anal->pcalign = align;
 return 1;
}
