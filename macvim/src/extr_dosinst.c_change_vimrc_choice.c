
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; int * installfunc; } ;


 scalar_t__ NUL ;
 int alloc_text (int,char*,scalar_t__*) ;
 TYPE_1__* choices ;
 int * install_vimrc ;
 scalar_t__* oldvimrc ;
 scalar_t__* vimrc ;

__attribute__((used)) static void
change_vimrc_choice(int idx)
{
    if (choices[idx].installfunc != ((void*)0))
    {

 if (*oldvimrc != NUL)
     alloc_text(idx, "Do NOT change startup file %s", oldvimrc);
 else
     alloc_text(idx, "Do NOT create startup file %s", vimrc);
 choices[idx].installfunc = ((void*)0);
 choices[idx + 1].active = 0;
 choices[idx + 2].active = 0;
 choices[idx + 3].active = 0;
    }
    else
    {

 if (*oldvimrc != NUL)
     alloc_text(idx, "Overwrite startup file %s with:", oldvimrc);
 else
     alloc_text(idx, "Create startup file %s with:", vimrc);
 choices[idx].installfunc = install_vimrc;
 choices[idx + 1].active = 1;
 choices[idx + 2].active = 1;
 choices[idx + 3].active = 1;
    }
}
