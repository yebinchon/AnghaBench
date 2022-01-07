
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* cond; struct TYPE_4__* data; struct TYPE_4__* module_name; struct TYPE_4__* obytes; struct TYPE_4__* bbytes; struct TYPE_4__* name; } ;
typedef TYPE_1__ RBreakpointItem ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void r_bp_item_free (RBreakpointItem *b) {
 free (b->name);
 free (b->bbytes);
 free (b->obytes);
 free (b->module_name);
 free (b->data);
 free (b->cond);
 free (b);
}
