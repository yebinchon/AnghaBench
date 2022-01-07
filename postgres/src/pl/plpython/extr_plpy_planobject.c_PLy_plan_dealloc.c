
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * mcxt; int * plan; } ;
struct TYPE_7__ {TYPE_1__* ob_type; } ;
struct TYPE_6__ {int (* tp_free ) (TYPE_2__*) ;} ;
typedef TYPE_2__ PyObject ;
typedef TYPE_3__ PLyPlanObject ;


 int MemoryContextDelete (int *) ;
 int SPI_freeplan (int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
PLy_plan_dealloc(PyObject *arg)
{
 PLyPlanObject *ob = (PLyPlanObject *) arg;

 if (ob->plan)
 {
  SPI_freeplan(ob->plan);
  ob->plan = ((void*)0);
 }
 if (ob->mcxt)
 {
  MemoryContextDelete(ob->mcxt);
  ob->mcxt = ((void*)0);
 }
 arg->ob_type->tp_free(arg);
}
