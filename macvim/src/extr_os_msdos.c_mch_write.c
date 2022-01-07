
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char char_u ;


 char ESC ;
 int S_iBottom ;
 int S_iCurrentColumn ;
 int S_iLeft ;
 int S_iRight ;
 int S_iTop ;
 int ScreenVisualBell () ;
 int WaitForChar (scalar_t__) ;
 scalar_t__ full_screen ;
 int myclreol () ;
 int myclrscr () ;
 int mydelline () ;
 int myflush () ;
 int mygetdigits (char**) ;
 int mygotoxy (int,int) ;
 int myinsline () ;
 int mynormvideo () ;
 int myputch (char) ;
 int mytextattr (int) ;
 int mytextbackground (int) ;
 int mytextcolor (int) ;
 int mywindow (int,int,int,int) ;
 scalar_t__ p_wd ;
 scalar_t__ term_console ;
 int write (int,char*,unsigned int) ;

void
mch_write(
    char_u *s,
    int len)
{
    char_u *p;
    int row, col;

    if (term_console && full_screen)
 while (len--)
 {

     if (p_wd)
  WaitForChar(p_wd);

     if (s[0] == '\n')






  myputch('\r');

     else if (s[0] == ESC && len > 1 && s[1] == '|')
     {
  switch (s[2])
  {




  case 'J':



       myclrscr();
       goto got3;

  case 'K':



       myclreol();
       goto got3;

  case 'L':



       myinsline();
       goto got3;

  case 'M':



       mydelline();
got3: s += 3;
       len -= 2;
       continue;

  case '0':
  case '1':
  case '2':
  case '3':
  case '4':
  case '5':
  case '6':
  case '7':
  case '8':
  case '9': p = s + 2;
       row = mygetdigits(&p);
       if (p > s + len)
    break;
       if (*p == ';')
       {
    ++p;
    col = mygetdigits(&p);
    if (p > s + len)
        break;
    if (*p == 'H' || *p == 'r' || *p == 'V')
    {



        if (*p == 'H')
     mygotoxy(col, row);
        else if (*p == 'V')
     mywindow(row, S_iTop, col, S_iBottom);
        else
     mywindow(S_iLeft, row, S_iRight, col);
        len -= p - s;
        s = p + 1;
        continue;
    }
       }
       else if (*p == 'm' || *p == 'f' || *p == 'b')
       {
    if (*p == 'm')
    {
        if (row == 0)
     mynormvideo();
        else
     mytextattr(row);
    }
    else if (*p == 'f')
        mytextcolor(row);
    else
        mytextbackground(row);

    len -= p - s;
    s = p + 1;
    continue;
       }
  }
     }
     myputch(*s++);
 }
    else
    {
 write(1, s, (unsigned)len);
    }
}
