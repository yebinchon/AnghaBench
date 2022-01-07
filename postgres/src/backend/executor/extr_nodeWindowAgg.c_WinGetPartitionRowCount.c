
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64 ;
typedef TYPE_1__* WindowObject ;
struct TYPE_6__ {int spooled_rows; } ;
struct TYPE_5__ {TYPE_2__* winstate; } ;


 int Assert (int ) ;
 int WindowObjectIsValid (TYPE_1__*) ;
 int spool_tuples (TYPE_2__*,int) ;

int64
WinGetPartitionRowCount(WindowObject winobj)
{
 Assert(WindowObjectIsValid(winobj));
 spool_tuples(winobj->winstate, -1);
 return winobj->winstate->spooled_rows;
}
