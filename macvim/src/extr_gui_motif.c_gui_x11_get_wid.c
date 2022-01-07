
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Window ;


 int XtWindow (int ) ;
 int textArea ;

Window
gui_x11_get_wid()
{
    return(XtWindow(textArea));
}
