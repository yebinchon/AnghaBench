
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ text; scalar_t__ (* word_break_proc ) (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;} ;
typedef scalar_t__ INT ;
typedef TYPE_1__ EDITSTATE ;


 scalar_t__ EDIT_WordBreakProc (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ stub1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static INT EDIT_CallWordBreakProc(EDITSTATE *es, INT start, INT index, INT count, INT action)
{
    INT ret;

    if (es->word_break_proc)
        ret = es->word_break_proc(es->text + start, index, count, action);
    else
        ret = EDIT_WordBreakProc(es, es->text, index + start, count + start, action) - start;

    return ret;
}
