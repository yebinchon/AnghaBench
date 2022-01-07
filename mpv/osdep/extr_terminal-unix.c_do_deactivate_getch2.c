
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;


 int TCSANOW ;
 int enable_kx (int) ;
 scalar_t__ getch2_active ;
 int tcsetattr (int ,int ,struct termios const*) ;
 int tio_orig ;
 scalar_t__ tio_orig_set ;
 int tty_in ;

__attribute__((used)) static void do_deactivate_getch2(void)
{
    if (!getch2_active)
        return;

    enable_kx(0);

    if (tio_orig_set) {


        tcsetattr(tty_in, TCSANOW, (const struct termios *) &tio_orig);
    }

    getch2_active = 0;
}
