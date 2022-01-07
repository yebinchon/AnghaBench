
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ b_changed; } ;


 int TRUE ;
 int bt_dontwrite (TYPE_1__*) ;
 TYPE_1__* curbuf ;
 scalar_t__ file_ff_differs (TYPE_1__*,int ) ;

int
curbufIsChanged()
{
    return



 (curbuf->b_changed || file_ff_differs(curbuf, TRUE));
}
