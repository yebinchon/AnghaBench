
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64 ;
typedef TYPE_2__* WindowObject ;
struct TYPE_6__ {TYPE_1__* winstate; } ;
struct TYPE_5__ {int currentpos; } ;


 int Assert (int ) ;
 int WindowObjectIsValid (TYPE_2__*) ;

int64
WinGetCurrentPosition(WindowObject winobj)
{
 Assert(WindowObjectIsValid(winobj));
 return winobj->winstate->currentpos;
}
