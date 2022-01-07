
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_6__ {TYPE_1__* cfg; } ;
struct TYPE_5__ {int end; int g; } ;
typedef TYPE_2__ EsilCfgGen ;


 int _common_break_goto (TYPE_2__*,int ) ;
 int r_graph_add_edge (int ,int ,int ) ;

void _handle_break (EsilCfgGen *gen, ut32 id) {
 r_graph_add_edge (gen->cfg->g, _common_break_goto (gen, id), gen->cfg->end);
}
