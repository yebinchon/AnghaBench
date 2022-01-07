
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int back_pixel; } ;


 int XmChangeColor (int *,int ) ;
 int XmNbackground ;
 int XtVaSetValues (int *,int ,int ,int *) ;
 TYPE_1__ gui ;
 int * textArea ;

void
gui_x11_set_back_color()
{
    if (textArea != ((void*)0))



 XtVaSetValues(textArea,
    XmNbackground, gui.back_pixel,
    ((void*)0));

}
