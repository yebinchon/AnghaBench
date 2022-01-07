
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* readOnly; struct TYPE_5__* cmdStrCache; struct TYPE_5__* cmd; struct TYPE_5__* title; } ;
struct TYPE_4__ {TYPE_2__* model; } ;
typedef TYPE_1__ RPanel ;


 int free (TYPE_2__*) ;

void __free_panel_model(RPanel *panel) {
 free (panel->model->title);
 free (panel->model->cmd);
 free (panel->model->cmdStrCache);
 free (panel->model->readOnly);
 free (panel->model);
}
