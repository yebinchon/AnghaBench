#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* value; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {struct TYPE_5__* next; TYPE_2__* key; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ PROFILESECTION ;
typedef  TYPE_2__ PROFILEKEY ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC3( PROFILESECTION **section,
			       LPCWSTR section_name, LPCWSTR key_name )
{
    while (*section)
    {
        if (!FUNC2( (*section)->name, section_name ))
        {
            PROFILEKEY **key = &(*section)->key;
            while (*key)
            {
                if (!FUNC2( (*key)->name, key_name ))
                {
                    PROFILEKEY *to_del = *key;
                    *key = to_del->next;
                    FUNC1( FUNC0(), 0, to_del->value);
                    FUNC1( FUNC0(), 0, to_del );
                    return TRUE;
                }
                key = &(*key)->next;
            }
        }
        section = &(*section)->next;
    }
    return FALSE;
}