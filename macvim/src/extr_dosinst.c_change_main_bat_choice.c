
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int active; int (* changefunc ) (int) ;int text; } ;
struct TYPE_3__ {scalar_t__* batpath; int batname; } ;


 scalar_t__ NUL ;
 int TARGET_COUNT ;
 int bat_text_no ;
 int bat_text_yes ;
 int change_bat_choice (int) ;
 TYPE_2__* choices ;
 int set_bat_text (int,scalar_t__*,int ) ;
 int strcpy (scalar_t__*,scalar_t__*) ;
 TYPE_1__* targets ;

__attribute__((used)) static void
change_main_bat_choice(int idx)
{
    int i;


    change_bat_choice(idx);

    if (targets[0].batpath[0] != NUL)
 choices[idx].text = bat_text_yes;
    else
 choices[idx].text = bat_text_no;


    for (i = 1; i < TARGET_COUNT; ++i)
    {


 if (targets[0].batpath[0] != NUL
  && choices[idx + i].changefunc != ((void*)0))
 {
     choices[idx + i].active = 1;
     if (choices[idx + i].changefunc == change_bat_choice
      && targets[i].batpath[0] != NUL)
     {
  strcpy(targets[i].batpath, targets[0].batpath);
  set_bat_text(idx + i, targets[i].batpath, targets[i].batname);
     }
 }
 else
     choices[idx + i].active = 0;
    }
}
