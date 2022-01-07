
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sb_prev; } ;
typedef TYPE_1__ msgchunk_T ;


 int FALSE ;
 int do_more_prompt (char) ;
 int last_msgchunk ;
 TYPE_1__* msg_sb_start (int ) ;
 int vim_beep () ;
 int wait_return (int ) ;

void
show_sb_text()
{
    msgchunk_T *mp;



    mp = msg_sb_start(last_msgchunk);
    if (mp == ((void*)0) || mp->sb_prev == ((void*)0))
 vim_beep();
    else
    {
 do_more_prompt('G');
 wait_return(FALSE);
    }
}
