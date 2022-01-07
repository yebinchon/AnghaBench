
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * reflines; } ;
struct TYPE_8__ {int show_lines_call; int linesout; int l; int len; int buf; int addr; scalar_t__ pj; scalar_t__ show_lines_bb; TYPE_1__* core; } ;
struct TYPE_7__ {TYPE_3__* anal; } ;
typedef TYPE_2__ RDisasmState ;
typedef TYPE_3__ RAnal ;


 int UT64_MAX ;
 int ds_reflines_fini (TYPE_2__*) ;
 int lastaddr ;
 int * r_anal_reflines_get (TYPE_3__*,int ,int ,int ,int ,int ,int ) ;
 int r_list_free (int *) ;

__attribute__((used)) static void ds_reflines_init(RDisasmState *ds) {
 RAnal *anal = ds->core->anal;

 lastaddr = UT64_MAX;

 if (ds->show_lines_bb || ds->pj) {
  ds_reflines_fini (ds);
  anal->reflines = r_anal_reflines_get (anal,
   ds->addr, ds->buf, ds->len, ds->l,
   ds->linesout, ds->show_lines_call);
 } else {
  r_list_free (anal->reflines);
  anal->reflines = ((void*)0);
 }
}
