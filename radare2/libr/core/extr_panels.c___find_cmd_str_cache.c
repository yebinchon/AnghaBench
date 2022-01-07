
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* model; } ;
struct TYPE_4__ {char* cmdStrCache; scalar_t__ cache; } ;
typedef TYPE_2__ RPanel ;
typedef int RCore ;



char *__find_cmd_str_cache(RCore *core, RPanel* panel) {
 if (panel->model->cache && panel->model->cmdStrCache) {
  return panel->model->cmdStrCache;
 }
 return ((void*)0);
}
