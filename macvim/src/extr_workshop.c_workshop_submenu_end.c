
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 char NUL ;
 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int curMenuName ;
 int curMenuPriority ;
 scalar_t__ strncmp (int ,char*,int) ;
 char* strrchr (int ,char) ;
 int wstrace (char*) ;

void
workshop_submenu_end()
{
    char *p;







    p = strrchr(curMenuPriority, '.');
    ASSERT(p != ((void*)0));
    *p = NUL;

    p = strrchr(curMenuName, '.');
    ASSERT(p != ((void*)0));
    *p = NUL;
}
