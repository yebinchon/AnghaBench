
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOLD () ;
 int CLEAR_ATTR () ;
 int FOREGROUND_COLOR (int ) ;
 int foregroundColor ;
 int printf (char*,char*) ;

void nmstermio_print_reveal_string(char *s, int colorOn) {


 BOLD();
 if (colorOn) {
  FOREGROUND_COLOR(foregroundColor);
 }


 printf("%s", s);


 CLEAR_ATTR();
}
