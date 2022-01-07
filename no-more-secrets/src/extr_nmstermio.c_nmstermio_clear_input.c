
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIONREAD ;
 int STDIN_FILENO ;
 int getchar () ;
 int ioctl (int ,int ,int*) ;

void nmstermio_clear_input(void) {
 int i;

 ioctl(STDIN_FILENO, FIONREAD, &i);

 while (i-- > 0) {
  getchar();
 }
}
