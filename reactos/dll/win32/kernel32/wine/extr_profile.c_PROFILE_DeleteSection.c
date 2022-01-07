
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int name; } ;
typedef TYPE_1__ PROFILESECTION ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int PROFILE_Free (TYPE_1__*) ;
 int TRUE ;
 int strcmpiW (int ,int ) ;

__attribute__((used)) static BOOL PROFILE_DeleteSection( PROFILESECTION **section, LPCWSTR name )
{
    while (*section)
    {
        if (!strcmpiW( (*section)->name, name ))
        {
            PROFILESECTION *to_del = *section;
            *section = to_del->next;
            to_del->next = ((void*)0);
            PROFILE_Free( to_del );
            return TRUE;
        }
        section = &(*section)->next;
    }
    return FALSE;
}
