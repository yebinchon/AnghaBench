
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int style; int char_width; } ;
typedef int INT ;
typedef TYPE_1__ EDITSTATE ;
typedef int BOOL ;


 int EDIT_EM_LineScroll_internal (TYPE_1__*,int ,int ) ;
 int ES_MULTILINE ;
 int FALSE ;

__attribute__((used)) static BOOL EDIT_EM_LineScroll(EDITSTATE *es, INT dx, INT dy)
{
 if (!(es->style & ES_MULTILINE))
  return FALSE;

 dx *= es->char_width;
 return EDIT_EM_LineScroll_internal(es, dx, dy);
}
