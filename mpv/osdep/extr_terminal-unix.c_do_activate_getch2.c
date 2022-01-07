
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_lflag; int* c_cc; } ;


 int ECHO ;
 int ICANON ;
 int TCSANOW ;
 size_t VMIN ;
 size_t VTIME ;
 int enable_kx (int) ;
 int getch2_active ;
 int read_terminal ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int ,struct termios*) ;
 struct termios tio_orig ;
 int tio_orig_set ;
 int tty_in ;

__attribute__((used)) static void do_activate_getch2(void)
{
    if (getch2_active || !read_terminal)
        return;

    enable_kx(1);

    struct termios tio_new;
    tcgetattr(tty_in,&tio_new);

    if (!tio_orig_set) {
        tio_orig = tio_new;
        tio_orig_set = 1;
    }

    tio_new.c_lflag &= ~(ICANON|ECHO);
    tio_new.c_cc[VMIN] = 1;
    tio_new.c_cc[VTIME] = 0;
    tcsetattr(tty_in,TCSANOW,&tio_new);

    getch2_active = 1;
}
