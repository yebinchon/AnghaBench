
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sb_eol; } ;


 int TRUE ;
 TYPE_1__* last_msgchunk ;

void
msg_sb_eol()
{
    if (last_msgchunk != ((void*)0))
 last_msgchunk->sb_eol = TRUE;
}
