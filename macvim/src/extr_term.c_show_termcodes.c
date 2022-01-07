
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; int name; } ;


 int Columns ;
 int FALSE ;
 int GAP ;
 int INC2 ;
 int INC3 ;
 int MSG_PUTS_TITLE (int ) ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ alloc (unsigned int) ;
 scalar_t__ got_int ;
 int msg_col ;
 int msg_putchar (char) ;
 int out_flush () ;
 int show_one_termcode (int ,int ,int ) ;
 int tc_len ;
 TYPE_1__* termcodes ;
 int ui_breakcheck () ;
 int vim_free (int*) ;

void
show_termcodes()
{
    int col;
    int *items;
    int item_count;
    int run;
    int row, rows;
    int cols;
    int i;
    int len;





    if (tc_len == 0)
 return;
    items = (int *)alloc((unsigned)(sizeof(int) * tc_len));
    if (items == ((void*)0))
 return;


    MSG_PUTS_TITLE(_("\n--- Terminal keys ---"));







    for (run = 1; run <= 3 && !got_int; ++run)
    {



 item_count = 0;
 for (i = 0; i < tc_len; i++)
 {
     len = show_one_termcode(termcodes[i].name,
          termcodes[i].code, FALSE);
     if (len <= 27 - 2 ? run == 1
   : len <= 40 - 2 ? run == 2
   : run == 3)
  items[item_count++] = i;
 }




 if (run <= 2)
 {
     cols = (Columns + 2) / (run == 1 ? 27 : 40);
     if (cols == 0)
  cols = 1;
     rows = (item_count + cols - 1) / cols;
 }
 else
     rows = item_count;
 for (row = 0; row < rows && !got_int; ++row)
 {
     msg_putchar('\n');
     if (got_int)
  break;
     col = 0;
     for (i = row; i < item_count; i += rows)
     {
  msg_col = col;
  show_one_termcode(termcodes[items[i]].name,
           termcodes[items[i]].code, TRUE);
  if (run == 2)
      col += 40;
  else
      col += 27;
     }
     out_flush();
     ui_breakcheck();
 }
    }
    vim_free(items);
}
