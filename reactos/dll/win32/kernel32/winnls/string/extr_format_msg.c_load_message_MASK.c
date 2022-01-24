#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ ULONG_PTR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int Flags; scalar_t__ Text; } ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_1__ MESSAGE_RESOURCE_ENTRY ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  scalar_t__ HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int MESSAGE_RESOURCE_UNICODE ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ RT_MESSAGETABLE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static LPWSTR FUNC12( HMODULE module, UINT id, WORD lang )
{
#ifdef __REACTOS__
    MESSAGE_RESOURCE_ENTRY *mre;
#else
    const MESSAGE_RESOURCE_ENTRY *mre;
#endif
    WCHAR *buffer;
    NTSTATUS status;

    FUNC8("module = %p, id = %08x\n", module, id );

    if (!module) module = FUNC0( NULL );
#ifdef __REACTOS__
    status = RtlFindMessage(module, (ULONG_PTR)RT_MESSAGETABLE, lang, id, &mre);
    if (!NT_SUCCESS(status))
#else
    if ((status = FUNC5( module, RT_MESSAGETABLE, lang, id, &mre )) != STATUS_SUCCESS)
#endif
    {
        FUNC7( FUNC6(status) );
        return NULL;
    }

    if (mre->Flags & MESSAGE_RESOURCE_UNICODE)
    {
        int len = (FUNC10( (const WCHAR *)mre->Text ) + 1) * sizeof(WCHAR);
        if (!(buffer = FUNC2( FUNC1(), 0, len ))) return NULL;
        FUNC9( buffer, mre->Text, len );
    }
    else
    {
        int len = FUNC3( CP_ACP, 0, (const char *)mre->Text, -1, NULL, 0 );
        if (!(buffer = FUNC2( FUNC1(), 0, len * sizeof(WCHAR) ))) return NULL;
        FUNC3( CP_ACP, 0, (const char*)mre->Text, -1, buffer, len );
    }
    FUNC8("returning %s\n", FUNC11(buffer));
    return buffer;
}