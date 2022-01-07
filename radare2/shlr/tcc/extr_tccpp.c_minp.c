
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ch ;
 int handle_stray () ;
 int inp () ;

void minp(void)
{
 inp ();
 if (ch == '\\') {
  handle_stray ();
 }
}
