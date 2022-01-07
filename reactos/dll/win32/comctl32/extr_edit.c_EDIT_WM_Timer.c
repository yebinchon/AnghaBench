
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ region_posx; } ;
typedef TYPE_1__ EDITSTATE ;


 int EDIT_MoveBackward (TYPE_1__*,int ) ;
 int EDIT_MoveForward (TYPE_1__*,int ) ;
 int TRUE ;

__attribute__((used)) static void EDIT_WM_Timer(EDITSTATE *es)
{
 if (es->region_posx < 0) {
  EDIT_MoveBackward(es, TRUE);
 } else if (es->region_posx > 0) {
  EDIT_MoveForward(es, TRUE);
 }




}
