
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isatty (int ) ;
 int strlen (char*) ;
 int tty_out ;
 int write (int ,char*,int ) ;

__attribute__((used)) static void enable_kx(bool enable)
{





    if (isatty(tty_out)) {
        char *cmd = enable ? "\033=" : "\033>";
        (void)write(tty_out, cmd, strlen(cmd));
    }
}
