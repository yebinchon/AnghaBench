
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDIN_FILENO ;
 int close (int) ;
 int tty_in ;
 int tty_out ;

__attribute__((used)) static void close_tty(void)
{
    if (tty_in >= 0 && tty_in != STDIN_FILENO)
        close(tty_in);

    tty_in = tty_out = -1;
}
