#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {char* name; struct TYPE_7__* next; int /*<<< orphan*/ * value; } ;
struct TYPE_6__ {char* name; TYPE_2__* key; struct TYPE_6__* next; } ;
typedef  TYPE_1__ PROFILESECTION ;
typedef  TYPE_2__ PROFILEKEY ;
typedef  scalar_t__* LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__*) ; 
 int FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__*,int) ; 

__attribute__((used)) static PROFILEKEY *FUNC7( PROFILESECTION **section, LPCWSTR section_name,
                                 LPCWSTR key_name, BOOL create, BOOL create_always )
{
    LPCWSTR p;
    int seclen = 0, keylen = 0;

    while (FUNC3(*section_name)) section_name++;
    if (*section_name)
    {
        p = section_name + FUNC5(section_name) - 1;
        while ((p > section_name) && FUNC3(*p)) p--;
        seclen = p - section_name + 1;
    }

    while (FUNC3(*key_name)) key_name++;
    if (*key_name)
    {
        p = key_name + FUNC5(key_name) - 1;
        while ((p > key_name) && FUNC3(*p)) p--;
        keylen = p - key_name + 1;
    }

    while (*section)
    {
        if (!FUNC6((*section)->name, section_name, seclen) &&
            ((*section)->name)[seclen] == '\0')
        {
            PROFILEKEY **key = &(*section)->key;

            while (*key)
            {
                /* If create_always is FALSE then we check if the keyname
                 * already exists. Otherwise we add it regardless of its
                 * existence, to allow keys to be added more than once in
                 * some cases.
                 */
                if(!create_always)
                {
                    if ( (!(FUNC6( (*key)->name, key_name, keylen )))
                         && (((*key)->name)[keylen] == '\0') )
                        return *key;
                }
                key = &(*key)->next;
            }
            if (!create) return NULL;
            if (!(*key = FUNC1( FUNC0(), 0, sizeof(PROFILEKEY) + FUNC5(key_name) * sizeof(WCHAR) )))
                return NULL;
            FUNC4( (*key)->name, key_name );
            (*key)->value = NULL;
            (*key)->next  = NULL;
            return *key;
        }
        section = &(*section)->next;
    }
    if (!create) return NULL;
    *section = FUNC1( FUNC0(), 0, sizeof(PROFILESECTION) + FUNC5(section_name) * sizeof(WCHAR) );
    if(*section == NULL) return NULL;
    FUNC4( (*section)->name, section_name );
    (*section)->next = NULL;
    if (!((*section)->key  = FUNC1( FUNC0(), 0,
                                        sizeof(PROFILEKEY) + FUNC5(key_name) * sizeof(WCHAR) )))
    {
        FUNC2(FUNC0(), 0, *section);
        return NULL;
    }
    FUNC4( (*section)->key->name, key_name );
    (*section)->key->value = NULL;
    (*section)->key->next  = NULL;
    return (*section)->key;
}