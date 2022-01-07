
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int style; int line_count; TYPE_1__* first_line_def; int selection_end; int selection_start; } ;
struct TYPE_5__ {scalar_t__ length; struct TYPE_5__* next; } ;
typedef TYPE_1__ LINEDEF ;
typedef int INT ;
typedef TYPE_2__ EDITSTATE ;


 int ES_MULTILINE ;
 scalar_t__ get_text_length (TYPE_2__*) ;
 int min (int ,int ) ;

__attribute__((used)) static INT EDIT_EM_LineFromChar(EDITSTATE *es, INT index)
{
 INT line;
 LINEDEF *line_def;

 if (!(es->style & ES_MULTILINE))
  return 0;
 if (index > (INT)get_text_length(es))
  return es->line_count - 1;
 if (index == -1)
  index = min(es->selection_start, es->selection_end);

 line = 0;
 line_def = es->first_line_def;
 index -= line_def->length;
 while ((index >= 0) && line_def->next) {
  line++;
  line_def = line_def->next;
  index -= line_def->length;
 }
 return line;
}
