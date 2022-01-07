
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * reflines; } ;
struct TYPE_6__ {int prev_line_col; int refline2; int refline; TYPE_1__* core; } ;
struct TYPE_5__ {TYPE_3__* anal; } ;
typedef TYPE_2__ RDisasmState ;
typedef TYPE_3__ RAnal ;


 int R_FREE (int ) ;
 int r_list_free (int *) ;

__attribute__((used)) static void ds_reflines_fini(RDisasmState *ds) {
 RAnal *anal = ds->core->anal;
 r_list_free (anal->reflines);
 anal->reflines = ((void*)0);
 R_FREE (ds->refline);
 R_FREE (ds->refline2);
 R_FREE (ds->prev_line_col);
}
