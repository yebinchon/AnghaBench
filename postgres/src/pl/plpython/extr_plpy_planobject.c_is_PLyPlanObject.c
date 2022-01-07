
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ob_type; } ;
typedef TYPE_1__ PyObject ;


 int PLy_PlanType ;

bool
is_PLyPlanObject(PyObject *ob)
{
 return ob->ob_type == &PLy_PlanType;
}
