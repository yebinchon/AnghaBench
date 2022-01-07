
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ char1; int char2; int result; } ;
typedef TYPE_1__ digr_T ;
struct TYPE_6__ {int ga_len; scalar_t__ ga_data; } ;


 int CLEAR ;
 int FALSE ;
 scalar_t__ NUL ;
 TYPE_1__* digraphdefault ;
 int getexactdigraph (scalar_t__,int,int ) ;
 int got_int ;
 scalar_t__ has_mbyte ;
 int msg_putchar (char) ;
 int must_redraw ;
 int printdigraph (TYPE_1__*) ;
 int ui_breakcheck () ;
 TYPE_2__ user_digraphs ;

void
listdigraphs()
{
    int i;
    digr_T *dp;

    msg_putchar('\n');

    dp = digraphdefault;
    for (i = 0; dp->char1 != NUL && !got_int; ++i)
    {
 if (getexactdigraph(dp->char1, dp->char2, FALSE) == dp->result



  )
     printdigraph(dp);

 ++dp;
 ui_breakcheck();
    }

    dp = (digr_T *)user_digraphs.ga_data;
    for (i = 0; i < user_digraphs.ga_len && !got_int; ++i)
    {
 printdigraph(dp);
 ui_breakcheck();
 ++dp;
    }
    must_redraw = CLEAR;

}
