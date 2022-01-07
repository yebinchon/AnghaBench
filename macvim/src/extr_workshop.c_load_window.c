
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lnum; } ;
struct TYPE_7__ {TYPE_1__ w_cursor; } ;
typedef TYPE_2__ win_T ;
typedef int char_u ;
typedef int buf_T ;


 int False ;
 int * buflist_findname (int *) ;
 TYPE_2__* curwin ;
 TYPE_2__* get_window (int *) ;
 int load_buffer_by_name (char*,int) ;
 int out_flush () ;
 int warp_to_pc (int) ;
 int win_enter (TYPE_2__*,int ) ;

__attribute__((used)) static void
load_window(
 char *filename,
 int lnum)
{
    buf_T *buf;
    win_T *win;





    buf = buflist_findname((char_u *)filename);
    if (buf == ((void*)0) || (win = get_window(buf)) == ((void*)0))
    {



 load_buffer_by_name(filename, lnum);
    }
    else
    {
 if (lnum > 0 && win->w_cursor.lnum != lnum)
 {
     warp_to_pc(lnum);


 }
    }
    out_flush();
}
