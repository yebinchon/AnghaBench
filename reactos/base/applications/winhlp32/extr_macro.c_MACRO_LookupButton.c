
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* first_button; } ;
typedef TYPE_1__ WINHELP_WINDOW ;
struct TYPE_6__ {int lpszID; struct TYPE_6__* next; } ;
typedef TYPE_2__ WINHELP_BUTTON ;
typedef int LPCSTR ;


 int lstrcmpiA (int ,int ) ;

__attribute__((used)) static WINHELP_BUTTON** MACRO_LookupButton(WINHELP_WINDOW* win, LPCSTR name)
{
    WINHELP_BUTTON** b;

    for (b = &win->first_button; *b; b = &(*b)->next)
        if (!lstrcmpiA(name, (*b)->lpszID)) break;
    return b;
}
