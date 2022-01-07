
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLOR_BLACK ;
 int COLOR_BLUE ;
 int COLOR_CYAN ;
 int COLOR_GREEN ;
 int COLOR_MAGENTA ;
 int COLOR_RED ;
 int COLOR_WHITE ;
 int COLOR_YELLOW ;
 int foregroundColor ;
 scalar_t__ strcmp (char*,char*) ;

void nmstermio_set_foregroundcolor(char *c) {

 if(strcmp("white", c) == 0)
  foregroundColor = COLOR_WHITE;
 else if(strcmp("yellow", c) == 0)
  foregroundColor = COLOR_YELLOW;
 else if(strcmp("black", c) == 0)
  foregroundColor = COLOR_BLACK;
 else if(strcmp("magenta", c) == 0)
  foregroundColor = COLOR_MAGENTA;
 else if(strcmp("blue", c) == 0)
  foregroundColor = COLOR_BLUE;
 else if(strcmp("green", c) == 0)
  foregroundColor = COLOR_GREEN;
 else if(strcmp("red", c) == 0)
  foregroundColor = COLOR_RED;
 else if(strcmp("cyan", c) == 0)
  foregroundColor = COLOR_CYAN;
 else
  foregroundColor = COLOR_BLUE;
}
