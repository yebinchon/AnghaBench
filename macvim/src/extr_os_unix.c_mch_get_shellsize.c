
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {long ws_col; long ws_row; long ts_cols; long ts_lines; } ;
struct ttysize {long ws_col; long ws_row; long ts_cols; long ts_lines; } ;
typedef int char_u ;


 int CPO_TSIZE ;
 long Columns ;
 int FAIL ;
 int OK ;
 long Rows ;
 int TIOCGSIZE ;
 int TIOCGWINSZ ;
 int _scrsize (int*) ;
 long atoi (char*) ;
 scalar_t__ getenv (char*) ;
 int getlinecol (long*,long*) ;
 scalar_t__ ioctl (int,int ,struct winsize*) ;
 scalar_t__ isatty (int) ;
 int limit_screen_size () ;
 int p_cpo ;
 int read_cmd_fd ;
 int * vim_strchr (int ,int ) ;

int
mch_get_shellsize()
{
    long rows = 0;
    long columns = 0;
    char_u *p;
    if (columns == 0 || rows == 0 || vim_strchr(p_cpo, CPO_TSIZE) != ((void*)0))
    {
 if ((p = (char_u *)getenv("LINES")))
     rows = atoi((char *)p);
 if ((p = (char_u *)getenv("COLUMNS")))
     columns = atoi((char *)p);
    }
    if (columns <= 0 || rows <= 0)
 return FAIL;

    Rows = rows;
    Columns = columns;
    limit_screen_size();
    return OK;
}
