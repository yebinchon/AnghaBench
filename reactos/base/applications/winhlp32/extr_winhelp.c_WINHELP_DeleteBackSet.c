
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {unsigned int index; TYPE_2__* set; } ;
struct TYPE_9__ {TYPE_3__ back; } ;
typedef TYPE_4__ WINHELP_WINDOW ;
struct TYPE_7__ {TYPE_1__* page; } ;
struct TYPE_6__ {int file; } ;


 int HLPFILE_FreeHlpFile (int ) ;

void WINHELP_DeleteBackSet(WINHELP_WINDOW* win)
{
    unsigned int i;

    for (i = 0; i < win->back.index; i++)
    {
        HLPFILE_FreeHlpFile(win->back.set[i].page->file);
        win->back.set[i].page = ((void*)0);
    }
    win->back.index = 0;
}
