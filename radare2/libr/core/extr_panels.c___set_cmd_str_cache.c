
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* model; } ;
struct TYPE_6__ {char* cmdStrCache; } ;
typedef TYPE_2__ RPanel ;
typedef int RCore ;


 int __set_dcb (int *,TYPE_2__*) ;
 int __set_pcb (TYPE_2__*) ;
 int free (char*) ;

void __set_cmd_str_cache(RCore *core, RPanel *p, char *s) {
 free (p->model->cmdStrCache);
 p->model->cmdStrCache = s;
 __set_dcb (core, p);
 __set_pcb (p);
}
