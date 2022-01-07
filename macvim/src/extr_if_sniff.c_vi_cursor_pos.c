
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int linenr_T ;
struct TYPE_6__ {scalar_t__ b_p_tx; } ;
struct TYPE_4__ {int lnum; long col; } ;
struct TYPE_5__ {TYPE_1__ w_cursor; } ;


 int STRLEN (int ) ;
 TYPE_3__* curbuf ;
 TYPE_2__* curwin ;
 int ml_get (int) ;

__attribute__((used)) static long
vi_cursor_pos()
{
    linenr_T lnum;
    long char_count=1;
    int line_size;
    int eol_size;

    if (curbuf->b_p_tx)
 eol_size = 2;
    else
 eol_size = 1;
    for (lnum = 1; lnum < curwin->w_cursor.lnum; ++lnum)
    {
 line_size = STRLEN(ml_get(lnum)) + eol_size;
 char_count += line_size;
    }
    return char_count + curwin->w_cursor.col;
}
