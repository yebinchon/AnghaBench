#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WCHAR ;
struct TYPE_5__ {scalar_t__* value; scalar_t__* name; struct TYPE_5__* next; } ;
struct TYPE_4__ {TYPE_2__* key; scalar_t__* name; struct TYPE_4__* next; } ;
typedef  TYPE_1__ PROFILESECTION ;
typedef  TYPE_2__ PROFILEKEY ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  ENCODING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC6 (scalar_t__*) ; 

__attribute__((used)) static void FUNC7( HANDLE hFile, const PROFILESECTION *section, ENCODING encoding )
{
    PROFILEKEY *key;
    WCHAR *buffer, *p;

    FUNC4(hFile, encoding);

    for ( ; section; section = section->next)
    {
        int len = 0;

        if (section->name[0]) len += FUNC6(section->name) + 4;

        for (key = section->key; key; key = key->next)
        {
            len += FUNC6(key->name) + 2;
            if (key->value) len += FUNC6(key->value) + 1;
        }

        buffer = FUNC1(FUNC0(), 0, len * sizeof(WCHAR));
        if (!buffer) return;

        p = buffer;
        if (section->name[0])
        {
            *p++ = '[';
            FUNC5( p, section->name );
            p += FUNC6(p);
            *p++ = ']';
            *p++ = '\r';
            *p++ = '\n';
        }

        for (key = section->key; key; key = key->next)
        {
            FUNC5( p, key->name );
            p += FUNC6(p);
            if (key->value)
            {
                *p++ = '=';
                FUNC5( p, key->value );
                p += FUNC6(p);
            }
            *p++ = '\r';
            *p++ = '\n';
        }
        FUNC3( hFile, buffer, len, encoding );
        FUNC2(FUNC0(), 0, buffer);
    }
}