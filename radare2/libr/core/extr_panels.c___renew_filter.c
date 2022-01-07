
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* model; } ;
struct TYPE_4__ {char** filter; scalar_t__ n_filter; } ;
typedef TYPE_2__ RPanel ;


 char** calloc (int,int) ;

void __renew_filter(RPanel *panel, int n) {
 panel->model->n_filter = 0;
 char **filter = calloc (sizeof (char *), n);
 if (!filter) {
  panel->model->filter = ((void*)0);
  return;
 }
 panel->model->filter = filter;
}
