
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* model; } ;
struct TYPE_4__ {char* readOnly; } ;
typedef TYPE_2__ RPanel ;


 int free (char*) ;

void __set_read_only(RPanel *p, char *s) {
 free (p->model->readOnly);
 p->model->readOnly = s;
}
