
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int style; } ;
typedef int INT ;
typedef TYPE_1__ EDITSTATE ;


 int EDIT_ML_InvalidateText (TYPE_1__*,int,int) ;
 int EDIT_SL_InvalidateText (TYPE_1__*,int,int) ;
 int ES_MULTILINE ;
 int get_text_length (TYPE_1__*) ;

__attribute__((used)) static void EDIT_InvalidateText(EDITSTATE *es, INT start, INT end)
{
 if (end == start)
  return;

 if (end == -1)
  end = get_text_length(es);

 if (end < start) {
     INT tmp = start;
     start = end;
     end = tmp;
 }

 if (es->style & ES_MULTILINE)
  EDIT_ML_InvalidateText(es, start, end);
 else
  EDIT_SL_InvalidateText(es, start, end);
}
