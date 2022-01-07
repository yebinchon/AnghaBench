
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char char_u ;
typedef int WORD ;
struct TYPE_4__ {scalar_t__ Y; scalar_t__ X; } ;
struct TYPE_3__ {scalar_t__ Bottom; int Left; scalar_t__ Top; scalar_t__ Right; } ;
typedef int DWORD ;


 int Columns ;
 char ESC ;
 int FALSE ;
 int MessageBeep (int) ;
 char NUL ;
 int TRUE ;
 int WaitForChar (scalar_t__) ;
 int clear_screen () ;
 int clear_to_end_of_display () ;
 int clear_to_end_of_line () ;
 int cursor_visible (int ) ;
 int delete_lines (int) ;
 scalar_t__ fdDump ;
 int fflush (scalar_t__) ;
 int fputc (char,scalar_t__) ;
 int fputs (char*,scalar_t__) ;
 int fwrite (char*,int,int,scalar_t__) ;
 TYPE_2__ g_coord ;
 TYPE_1__ g_srScrollRegion ;
 int getdigits (char**) ;
 int gotoxy (int,int) ;
 int insert_lines (int) ;
 int max (scalar_t__,int) ;
 int min (scalar_t__,int) ;
 int normvideo () ;
 scalar_t__ p_wd ;
 int scroll (int) ;
 int set_scroll_region (int ,int,int ,int) ;
 int standend () ;
 int standout () ;
 int strcspn (char*,char*) ;
 int term_console ;
 int termcap_mode_end () ;
 int termcap_mode_start () ;
 int textattr (int ) ;
 int textbackground (int ) ;
 int textcolor (int ) ;
 int visual_bell () ;
 int write (int,char*,unsigned int) ;
 int write_chars (char*,int) ;

void
mch_write(
    char_u *s,
    int len)
{
    s[len] = NUL;

    if (!term_console)
    {
 write(1, s, (unsigned)len);
 return;
    }


    while (len--)
    {


 DWORD prefix = (DWORD)strcspn(s, "\n\r\b\a\033");

 if (p_wd)
 {
     WaitForChar(p_wd);
     if (prefix != 0)
  prefix = 1;
 }

 if (prefix != 0)
 {
     DWORD nWritten;

     nWritten = write_chars(s, prefix);
     len -= (nWritten - 1);
     s += nWritten;
 }
 else if (s[0] == '\n')
 {

     if (g_coord.Y == g_srScrollRegion.Bottom)
     {
  scroll(1);
  gotoxy(g_srScrollRegion.Left + 1, g_srScrollRegion.Bottom + 1);
     }
     else
     {
  gotoxy(g_srScrollRegion.Left + 1, g_coord.Y + 2);
     }




     s++;
 }
 else if (s[0] == '\r')
 {

     gotoxy(g_srScrollRegion.Left+1, g_coord.Y + 1);




     s++;
 }
 else if (s[0] == '\b')
 {

     if (g_coord.X > g_srScrollRegion.Left)
  g_coord.X--;
     else if (g_coord.Y > g_srScrollRegion.Top)
     {
  g_coord.X = g_srScrollRegion.Right;
  g_coord.Y--;
     }
     gotoxy(g_coord.X + 1, g_coord.Y + 1);




     s++;
 }
 else if (s[0] == '\a')
 {

     MessageBeep(0xFFFFFFFF);




     s++;
 }
 else if (s[0] == ESC && len >= 3-1 && s[1] == '|')
 {



     char_u *p;
     int arg1 = 0, arg2 = 0;

     switch (s[2])
     {


     case '0': case '1': case '2': case '3': case '4':
     case '5': case '6': case '7': case '8': case '9':
  p = s + 2;
  arg1 = getdigits(&p);
  if (p > s + len)
      break;

  if (*p == ';')
  {
      ++p;
      arg2 = getdigits(&p);
      if (p > s + len)
   break;

      if (*p == 'H')
   gotoxy(arg2, arg1);
      else if (*p == 'r')
   set_scroll_region(0, arg1 - 1, Columns - 1, arg2 - 1);
  }
  else if (*p == 'A')
  {

      gotoxy(g_coord.X + 1,
      max(g_srScrollRegion.Top, g_coord.Y - arg1) + 1);
  }
  else if (*p == 'C')
  {

      gotoxy(min(g_srScrollRegion.Right, g_coord.X + arg1) + 1,
      g_coord.Y + 1);
  }
  else if (*p == 'H')
  {
      gotoxy(1, arg1);
  }
  else if (*p == 'L')
  {
      insert_lines(arg1);
  }
  else if (*p == 'm')
  {
      if (arg1 == 0)
   normvideo();
      else
   textattr((WORD) arg1);
  }
  else if (*p == 'f')
  {
      textcolor((WORD) arg1);
  }
  else if (*p == 'b')
  {
      textbackground((WORD) arg1);
  }
  else if (*p == 'M')
  {
      delete_lines(arg1);
  }

  len -= (int)(p - s);
  s = p + 1;
  break;




     case 'A':

  gotoxy(g_coord.X + 1,
         max(g_srScrollRegion.Top, g_coord.Y - 1) + 1);
  goto got3;

     case 'B':
  visual_bell();
  goto got3;

     case 'C':

  gotoxy(min(g_srScrollRegion.Right, g_coord.X + 1) + 1,
         g_coord.Y + 1);
  goto got3;

     case 'E':
  termcap_mode_end();
  goto got3;

     case 'F':
  standout();
  goto got3;

     case 'f':
  standend();
  goto got3;

     case 'H':
  gotoxy(1, 1);
  goto got3;

     case 'j':
  clear_to_end_of_display();
  goto got3;

     case 'J':
  clear_screen();
  goto got3;

     case 'K':
  clear_to_end_of_line();
  goto got3;

     case 'L':
  insert_lines(1);
  goto got3;

     case 'M':
  delete_lines(1);
  goto got3;

     case 'S':
  termcap_mode_start();
  goto got3;

     case 'V':
  cursor_visible(TRUE);
  goto got3;

     case 'v':
  cursor_visible(FALSE);
  goto got3;

     got3:
  s += 3;
  len -= 2;
     }
 }
 else
 {

     DWORD nWritten;

     nWritten = write_chars(s, 1);
     len -= (nWritten - 1);
     s += nWritten;
 }
    }





}
