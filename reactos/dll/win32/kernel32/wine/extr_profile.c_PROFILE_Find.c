
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_7__ {char* name; struct TYPE_7__* next; int * value; } ;
struct TYPE_6__ {char* name; TYPE_2__* key; struct TYPE_6__* next; } ;
typedef TYPE_1__ PROFILESECTION ;
typedef TYPE_2__ PROFILEKEY ;
typedef scalar_t__* LPCWSTR ;
typedef int BOOL ;


 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ PROFILE_isspaceW (scalar_t__) ;
 int strcpyW (char*,scalar_t__*) ;
 int strlenW (scalar_t__*) ;
 int strncmpiW (char*,scalar_t__*,int) ;

__attribute__((used)) static PROFILEKEY *PROFILE_Find( PROFILESECTION **section, LPCWSTR section_name,
                                 LPCWSTR key_name, BOOL create, BOOL create_always )
{
    LPCWSTR p;
    int seclen = 0, keylen = 0;

    while (PROFILE_isspaceW(*section_name)) section_name++;
    if (*section_name)
    {
        p = section_name + strlenW(section_name) - 1;
        while ((p > section_name) && PROFILE_isspaceW(*p)) p--;
        seclen = p - section_name + 1;
    }

    while (PROFILE_isspaceW(*key_name)) key_name++;
    if (*key_name)
    {
        p = key_name + strlenW(key_name) - 1;
        while ((p > key_name) && PROFILE_isspaceW(*p)) p--;
        keylen = p - key_name + 1;
    }

    while (*section)
    {
        if (!strncmpiW((*section)->name, section_name, seclen) &&
            ((*section)->name)[seclen] == '\0')
        {
            PROFILEKEY **key = &(*section)->key;

            while (*key)
            {





                if(!create_always)
                {
                    if ( (!(strncmpiW( (*key)->name, key_name, keylen )))
                         && (((*key)->name)[keylen] == '\0') )
                        return *key;
                }
                key = &(*key)->next;
            }
            if (!create) return ((void*)0);
            if (!(*key = HeapAlloc( GetProcessHeap(), 0, sizeof(PROFILEKEY) + strlenW(key_name) * sizeof(WCHAR) )))
                return ((void*)0);
            strcpyW( (*key)->name, key_name );
            (*key)->value = ((void*)0);
            (*key)->next = ((void*)0);
            return *key;
        }
        section = &(*section)->next;
    }
    if (!create) return ((void*)0);
    *section = HeapAlloc( GetProcessHeap(), 0, sizeof(PROFILESECTION) + strlenW(section_name) * sizeof(WCHAR) );
    if(*section == ((void*)0)) return ((void*)0);
    strcpyW( (*section)->name, section_name );
    (*section)->next = ((void*)0);
    if (!((*section)->key = HeapAlloc( GetProcessHeap(), 0,
                                        sizeof(PROFILEKEY) + strlenW(key_name) * sizeof(WCHAR) )))
    {
        HeapFree(GetProcessHeap(), 0, *section);
        return ((void*)0);
    }
    strcpyW( (*section)->key->name, key_name );
    (*section)->key->value = ((void*)0);
    (*section)->key->next = ((void*)0);
    return (*section)->key;
}
