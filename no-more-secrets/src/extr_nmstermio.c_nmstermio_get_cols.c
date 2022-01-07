
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_col; } ;


 int STDOUT_FILENO ;
 int TIOCGWINSZ ;
 int ioctl (int ,int ,struct winsize*) ;

int nmstermio_get_cols(void) {
 struct winsize w;
 ioctl(STDOUT_FILENO, TIOCGWINSZ, &w);

 return w.ws_col;
}
