
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int buffer; } ;
struct TYPE_8__ {int buffer; } ;
struct TYPE_7__ {int buffer; } ;
struct TYPE_11__ {TYPE_4__ free; TYPE_3__* cfg; TYPE_2__ pcache; TYPE_1__ rcache; } ;
typedef TYPE_5__ lfs1_t ;
struct TYPE_9__ {int lookahead_buffer; int prog_buffer; int read_buffer; } ;


 int lfs1_free (int ) ;

__attribute__((used)) static void lfs1_deinit(lfs1_t *lfs1) {

    if (!lfs1->cfg->read_buffer) {
        lfs1_free(lfs1->rcache.buffer);
    }

    if (!lfs1->cfg->prog_buffer) {
        lfs1_free(lfs1->pcache.buffer);
    }

    if (!lfs1->cfg->lookahead_buffer) {
        lfs1_free(lfs1->free.buffer);
    }
}
