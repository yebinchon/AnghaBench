
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int Columns ;
 int OUT_STR_NF (int *) ;
 int Rows ;
 int out_flush () ;
 int screen_start () ;
 int set_tty (int ,int) ;

void
mch_set_shellsize(void)
{
    set_tty(Rows, Columns);
    switch (Columns)
    {
 case 132: OUT_STR_NF((char_u *)"\033[?3h\033>"); break;
 case 80: OUT_STR_NF((char_u *)"\033[?3l\033>"); break;
 default: break;
    }
    out_flush();
    screen_start();
}
