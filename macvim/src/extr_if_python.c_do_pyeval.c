
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int v_number; int v_string; TYPE_2__* v_list; TYPE_1__* v_dict; } ;
struct TYPE_9__ {int v_type; TYPE_3__ vval; } ;
typedef TYPE_4__ typval_T ;
typedef int runner ;
typedef int rangeinitializer ;
typedef int char_u ;
struct TYPE_7__ {int lv_refcount; } ;
struct TYPE_6__ {int dv_refcount; } ;


 int DoPyCommand (char*,int ,int ,void*) ;



 int VAR_NUMBER ;

 int func_ref (int ) ;
 scalar_t__ init_range_eval ;
 scalar_t__ run_eval ;

void
do_pyeval (char_u *str, typval_T *rettv)
{
    DoPyCommand((char *) str,
     (rangeinitializer) init_range_eval,
     (runner) run_eval,
     (void *) rettv);
    switch(rettv->v_type)
    {
 case 131: ++rettv->vval.v_dict->dv_refcount; break;
 case 129: ++rettv->vval.v_list->lv_refcount; break;
 case 130: func_ref(rettv->vval.v_string); break;
 case 128:
     rettv->v_type = VAR_NUMBER;
     rettv->vval.v_number = 0;
     break;
    }
}
