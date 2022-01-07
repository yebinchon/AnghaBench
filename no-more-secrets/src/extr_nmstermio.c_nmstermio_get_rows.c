
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_row; } ;


 int STDOUT_FILENO ;
 int TIOCGWINSZ ;
 int ioctl (int ,int ,struct winsize*) ;

int nmstermio_get_rows(void) {
 struct winsize w;
 ioctl(STDOUT_FILENO, TIOCGWINSZ, &w);

 return w.ws_row;
}
