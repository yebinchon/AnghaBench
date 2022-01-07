
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int changed; TYPE_1__* section; } ;
struct TYPE_6__ {struct TYPE_6__* value; struct TYPE_6__* next; } ;
struct TYPE_5__ {struct TYPE_5__* next; TYPE_2__* key; int name; } ;
typedef TYPE_1__ PROFILESECTION ;
typedef TYPE_2__ PROFILEKEY ;
typedef int LPCWSTR ;


 TYPE_4__* CurProfile ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int TRUE ;
 int strcmpiW (int ,int ) ;

__attribute__((used)) static void PROFILE_DeleteAllKeys( LPCWSTR section_name)
{
    PROFILESECTION **section= &CurProfile->section;
    while (*section)
    {
        if (!strcmpiW( (*section)->name, section_name ))
        {
            PROFILEKEY **key = &(*section)->key;
            while (*key)
            {
                PROFILEKEY *to_del = *key;
  *key = to_del->next;
                HeapFree( GetProcessHeap(), 0, to_del->value);
  HeapFree( GetProcessHeap(), 0, to_del );
  CurProfile->changed =TRUE;
            }
        }
        section = &(*section)->next;
    }
}
