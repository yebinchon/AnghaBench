
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_row; int ws_col; } ;


 int TIOCGWINSZ ;
 scalar_t__ ioctl (int ,int ,struct winsize*) ;
 int tty_in ;

void terminal_get_size(int *w, int *h)
{
    struct winsize ws;
    if (ioctl(tty_in, TIOCGWINSZ, &ws) < 0 || !ws.ws_row || !ws.ws_col)
        return;

    *w = ws.ws_col;
    *h = ws.ws_row;
}
