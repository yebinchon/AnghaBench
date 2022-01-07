
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int event_buffer; int vimWindow; } ;


 int PtDestroyWidget (int ) ;
 int PxTranslateSet (int ,int *) ;
 int charset_translate ;
 TYPE_1__ gui ;
 int panel_titles ;
 int vim_free (int ) ;

void
gui_mch_exit(int rc)
{
    PtDestroyWidget(gui.vimWindow);

    PxTranslateSet(charset_translate, ((void*)0));

    vim_free(gui.event_buffer);




}
