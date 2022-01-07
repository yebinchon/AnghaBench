
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int True ;
 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int coloncmd (char*,int ) ;
 int tbpri ;
 int wstrace (char*) ;

void
workshop_toolbar_begin()
{





    coloncmd("aunmenu ToolBar", True);
    tbpri = 10;
}
