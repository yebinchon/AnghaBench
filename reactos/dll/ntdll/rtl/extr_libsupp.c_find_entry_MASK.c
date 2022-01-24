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
typedef  int /*<<< orphan*/  USHORT ;
typedef  int ULONG ;
struct TYPE_5__ {int /*<<< orphan*/  CurrentLocale; } ;
struct TYPE_4__ {int /*<<< orphan*/  Language; scalar_t__ Name; scalar_t__ Type; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  TYPE_1__ LDR_RESOURCE_INFO ;
typedef  int /*<<< orphan*/  LCID ;
typedef  void IMAGE_RESOURCE_DIRECTORY ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IMAGE_DIRECTORY_ENTRY_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_RESOURCE_DATA_NOT_FOUND ; 
 int /*<<< orphan*/  STATUS_RESOURCE_LANG_NOT_FOUND ; 
 int /*<<< orphan*/  STATUS_RESOURCE_NAME_NOT_FOUND ; 
 int /*<<< orphan*/  STATUS_RESOURCE_TYPE_NOT_FOUND ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_NEUTRAL ; 
 scalar_t__ SUBLANG_SYS_DEFAULT ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC8 (void*,int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC9 (void*,int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC10 (void*,void*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC12( PVOID BaseAddress, LDR_RESOURCE_INFO *info,
                     ULONG level, void **ret, int want_dir )
{
    ULONG size;
    void *root;
    IMAGE_RESOURCE_DIRECTORY *resdirptr;
    USHORT list[9];  /* list of languages to try */
    int i, pos = 0;
    LCID user_lcid, system_lcid;

    root = FUNC6( BaseAddress, TRUE, IMAGE_DIRECTORY_ENTRY_RESOURCE, &size );
    if (!root) return STATUS_RESOURCE_DATA_NOT_FOUND;
    if (size < sizeof(*resdirptr)) return STATUS_RESOURCE_DATA_NOT_FOUND;
    resdirptr = root;

    if (!level--) goto done;
    if (!(*ret = FUNC9( resdirptr, (LPCWSTR)info->Type, root, want_dir || level )))
        return STATUS_RESOURCE_TYPE_NOT_FOUND;
    if (!level--) return STATUS_SUCCESS;

    resdirptr = *ret;
    if (!(*ret = FUNC9( resdirptr, (LPCWSTR)info->Name, root, want_dir || level )))
        return STATUS_RESOURCE_NAME_NOT_FOUND;
    if (!level--) return STATUS_SUCCESS;
    if (level) return STATUS_INVALID_PARAMETER;  /* level > 3 */

    /* 1. specified language */
    pos = FUNC11( list, pos, info->Language );

    /* 2. specified language with neutral sublanguage */
    pos = FUNC11( list, pos, FUNC1( FUNC5(info->Language), SUBLANG_NEUTRAL ) );

    /* 3. neutral language with neutral sublanguage */
    pos = FUNC11( list, pos, FUNC1( LANG_NEUTRAL, SUBLANG_NEUTRAL ) );

    /* if no explicitly specified language, try some defaults */
    if (FUNC5(info->Language) == LANG_NEUTRAL)
    {
        /* user defaults, unless SYS_DEFAULT sublanguage specified  */
        if (FUNC7(info->Language) != SUBLANG_SYS_DEFAULT)
        {
            /* 4. current thread locale language */
            pos = FUNC11( list, pos, FUNC0(FUNC3()->CurrentLocale) );

            if (FUNC2(FUNC4(TRUE, &user_lcid)))
            {
                /* 5. user locale language */
                pos = FUNC11( list, pos, FUNC0(user_lcid) );

                /* 6. user locale language with neutral sublanguage  */
                pos = FUNC11( list, pos, FUNC1( FUNC5(user_lcid), SUBLANG_NEUTRAL ) );
            }
        }

        /* now system defaults */

        if (FUNC2(FUNC4(FALSE, &system_lcid)))
        {
            /* 7. system locale language */
            pos = FUNC11( list, pos, FUNC0( system_lcid ) );

            /* 8. system locale language with neutral sublanguage */
            pos = FUNC11( list, pos, FUNC1( FUNC5(system_lcid), SUBLANG_NEUTRAL ) );
        }

        /* 9. English */
        pos = FUNC11( list, pos, FUNC1( LANG_ENGLISH, SUBLANG_DEFAULT ) );
    }

    resdirptr = *ret;
    for (i = 0; i < pos; i++)
        if ((*ret = FUNC8( resdirptr, list[i], root, want_dir ))) return STATUS_SUCCESS;

    /* if no explicitly specified language, return the first entry */
    if (FUNC5(info->Language) == LANG_NEUTRAL)
    {
        if ((*ret = FUNC10( resdirptr, root, want_dir ))) return STATUS_SUCCESS;
    }
    return STATUS_RESOURCE_LANG_NOT_FOUND;

done:
    *ret = resdirptr;
    return STATUS_SUCCESS;
}