
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_RESIZE ;
 int LINES ;
 int clearoldprompt () ;
 int cleartimeout () ;
 int getch () ;
 int printprompt (char const*) ;
 int settimeout () ;
 int xlines ;

__attribute__((used)) static int get_input(const char *prompt)
{
 int r = KEY_RESIZE;

 if (prompt)
  printprompt(prompt);
 cleartimeout();
 r = getch();

 settimeout();
 return r;
}
