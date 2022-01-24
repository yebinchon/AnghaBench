#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  scalar_t__ NTSTATUS ;
typedef  char* LPCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ STATUS_INVALID_PARAMETER ; 
 scalar_t__ STATUS_SUCCESS ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static NTSTATUS FUNC7( LPCSTR name, UNICODE_STRING *str )
{
    if (FUNC1(name))
    {
        str->Buffer = FUNC6(FUNC2(name));
        return STATUS_SUCCESS;
    }
    if (name[0] == '#')
    {
        ULONG value;
        if (FUNC3( name + 1, 10, &value ) != STATUS_SUCCESS || FUNC0(value))
            return STATUS_INVALID_PARAMETER;
        str->Buffer = FUNC6(value);
        return STATUS_SUCCESS;
    }
    FUNC4( str, name );
    FUNC5( str, str, FALSE );
    return STATUS_SUCCESS;
}