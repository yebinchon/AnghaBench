#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_TRUST_INVALID_NAME_CONSTRAINTS ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,char) ; 

__attribute__((used)) static BOOL FUNC5(LPCWSTR constraint, LPCWSTR name,
 DWORD *trustErrorStatus)
{
    BOOL match = FALSE;
    LPCWSTR at;

    FUNC0("%s, %s\n", FUNC1(constraint), FUNC1(name));

    if (!constraint)
        *trustErrorStatus |= CERT_TRUST_INVALID_NAME_CONSTRAINTS;
    else if (!name)
        ; /* no match */
    else if (FUNC4(constraint, '@'))
        match = !FUNC3(constraint, name);
    else
    {
        if ((at = FUNC4(name, '@')))
            match = FUNC2(constraint, at + 1);
        else
            match = !FUNC3(constraint, name);
    }
    return match;
}