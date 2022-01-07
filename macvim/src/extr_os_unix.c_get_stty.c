
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;
struct termio {int sg_kill; int sg_erase; int * c_cc; } ;
struct sgttyb {int sg_kill; int sg_erase; int * c_cc; } ;
typedef int char_u ;


 int FALSE ;
 int NUL ;
 int TCGETA ;
 int TIOCGETP ;
 size_t VERASE ;
 size_t VINTR ;
 int add_termcode (int *,int *,int ) ;
 int do_fixdel (int *) ;
 int * find_termcode (int *) ;
 int intr_char ;
 int ioctl (int ,int ,struct termio*) ;
 int read_cmd_fd ;
 int tcgetattr (int ,struct termio*) ;

void
get_stty()
{
    char_u buf[2];
    char_u *p;
    struct sgttyb keys;

    if (ioctl(read_cmd_fd, TIOCGETP, &keys) != -1)
    {
 buf[0] = keys.sg_erase;
 intr_char = keys.sg_kill;

 buf[1] = NUL;
 add_termcode((char_u *)"kb", buf, FALSE);




 p = find_termcode((char_u *)"kD");
 if (p != ((void*)0) && p[0] == buf[0] && p[1] == buf[1])
     do_fixdel(((void*)0));
    }



}
