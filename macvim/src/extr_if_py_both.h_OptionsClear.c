
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fromObj; } ;
typedef TYPE_1__ OptionsObject ;


 int Py_CLEAR (int ) ;

__attribute__((used)) static int
OptionsClear(OptionsObject *self)
{
    Py_CLEAR(self->fromObj);
    return 0;
}
