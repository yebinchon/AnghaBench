
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64 ;
typedef TYPE_1__* WindowObject ;
struct TYPE_6__ {int buffer; } ;
typedef TYPE_2__ WindowAggState ;
struct TYPE_5__ {scalar_t__ markpos; scalar_t__ seekpos; int readptr; int markptr; TYPE_2__* winstate; } ;


 int Assert (int ) ;
 int ERROR ;
 int WindowObjectIsValid (TYPE_1__*) ;
 int elog (int ,char*) ;
 int tuplestore_select_read_pointer (int ,int ) ;
 int tuplestore_skiptuples (int ,scalar_t__,int) ;

void
WinSetMarkPosition(WindowObject winobj, int64 markpos)
{
 WindowAggState *winstate;

 Assert(WindowObjectIsValid(winobj));
 winstate = winobj->winstate;

 if (markpos < winobj->markpos)
  elog(ERROR, "cannot move WindowObject's mark position backward");
 tuplestore_select_read_pointer(winstate->buffer, winobj->markptr);
 if (markpos > winobj->markpos)
 {
  tuplestore_skiptuples(winstate->buffer,
         markpos - winobj->markpos,
         1);
  winobj->markpos = markpos;
 }
 tuplestore_select_read_pointer(winstate->buffer, winobj->readptr);
 if (markpos > winobj->seekpos)
 {
  tuplestore_skiptuples(winstate->buffer,
         markpos - winobj->seekpos,
         1);
  winobj->seekpos = markpos;
 }
}
