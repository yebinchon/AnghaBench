#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  changed; int /*<<< orphan*/  section; } ;
struct TYPE_4__ {int /*<<< orphan*/ * value; } ;
typedef  TYPE_1__ PROFILEKEY ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 TYPE_3__* CurProfile ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC12( LPCWSTR section_name, LPCWSTR key_name,
                               LPCWSTR value, BOOL create_always )
{
    if (!key_name)  /* Delete a whole section */
    {
        FUNC7("(%s)\n", FUNC8(section_name));
        CurProfile->changed |= FUNC4( &CurProfile->section,
                                                      section_name );
        return TRUE;         /* Even if PROFILE_DeleteSection() has failed,
                                this is not an error on application's level.*/
    }
    else if (!value)  /* Delete a key */
    {
        FUNC7("(%s,%s)\n", FUNC8(section_name), FUNC8(key_name) );
        CurProfile->changed |= FUNC3( &CurProfile->section,
                                                  section_name, key_name );
        return TRUE;          /* same error handling as above */
    }
    else  /* Set the key value */
    {
        PROFILEKEY *key = FUNC5(&CurProfile->section, section_name,
                                        key_name, TRUE, create_always );
        FUNC7("(%s,%s,%s):\n",
              FUNC8(section_name), FUNC8(key_name), FUNC8(value) );
        if (!key) return FALSE;

        /* strip the leading spaces. We can safely strip \n\r and
         * friends too, they should not happen here anyway. */
        while (FUNC6(*value)) value++;

        if (key->value)
        {
            if (!FUNC9( key->value, value ))
            {
                FUNC7("  no change needed\n" );
                return TRUE;  /* No change needed */
            }
            FUNC7("  replacing %s\n", FUNC8(key->value) );
            FUNC2( FUNC0(), 0, key->value );
        }
        else FUNC7("  creating key\n" );
        key->value = FUNC1( FUNC0(), 0, (FUNC11(value)+1) * sizeof(WCHAR) );
        FUNC10( key->value, value );
        CurProfile->changed = TRUE;
    }
    return TRUE;
}